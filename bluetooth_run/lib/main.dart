import 'dart:developer';

import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BluetoothTogglePage(),
    );
  }
}

class BluetoothTogglePage extends StatefulWidget {
  const BluetoothTogglePage({super.key});

  @override
  BluetoothTogglePageState createState() => BluetoothTogglePageState();
}

class BluetoothTogglePageState extends State<BluetoothTogglePage> {
  List<BluetoothDevice> availableDevices = [];

  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  Future<void> _checkPermissions() async {
    await [
      Permission.bluetooth,
      Permission.bluetoothScan,
      Permission.bluetoothConnect,
      Permission.location,
    ].request();
  }

  void _showEnableBluetoothDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Enable Bluetooth"),
          content: const Text(
              "Bluetooth is turned off. Please enable Bluetooth to proceed."),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _openBluetoothSettings();
              },
              child: const Text("Open Settings to Enable"),
            ),
          ],
        );
      },
    );
  }

  Future<void> _openBluetoothSettings() async {
    try {
      const intent = AndroidIntent(
        action: 'android.settings.BLUETOOTH_SETTINGS',
      );
      await intent.launch();
    } catch (e) {
      log("Error opening Bluetooth settings: $e");
    }
  }

  Future<void> _startScanForDevices() async {
    var state = await FlutterBluePlus.adapterState.first;
    if (state != BluetoothAdapterState.on) {
      _showEnableBluetoothDialog();
      return;
    }

    try {
      log("Starting Bluetooth scan...");
      availableDevices.clear();

      await FlutterBluePlus.startScan(timeout: const Duration(seconds: 10));

      FlutterBluePlus.scanResults.listen((results) {
        if (results.isEmpty) {
          log("No devices found during scan.");
        } else {
          log("Devices found: ${results.map((r) => r.device.platformName).toList()}");
          setState(() {
            availableDevices =
                results.map((result) => result.device).toSet().toList();
          });
        }
      });
    } catch (e) {
      log("Error scanning for devices: $e");
    }
  }

  Future<void> stopScanForDevices() async {
    try {
      log("Stopping Bluetooth scan...");
      await FlutterBluePlus.stopScan();
    } catch (e) {
      log("Error stopping scan: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bluetooth Toggle"),
      ),
      body: Center(
        child: StreamBuilder<BluetoothAdapterState>(
          stream: FlutterBluePlus.adapterState,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }

            bool isBluetoothOn = snapshot.data == BluetoothAdapterState.on;

            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Bluetooth",
                      style: TextStyle(fontSize: 18),
                    ),
                    Switch(
                      value: isBluetoothOn,
                      onChanged: (value) async {
                        if (!value) {
                          _showEnableBluetoothDialog();
                        } else if (!isBluetoothOn) {
                          _showEnableBluetoothDialog();
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: isBluetoothOn
                      ? () async {
                          await _startScanForDevices();
                        }
                      : () => _showEnableBluetoothDialog(),
                  child: const Text("Start Scanning"),
                ),
                if (isBluetoothOn) ...[
                  const SizedBox(height: 20),
                  const Text(
                    "Available Devices:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: availableDevices.isEmpty
                        ? const Center(
                            child: Text(
                              "No devices found. Ensure devices are discoverable and try again.",
                              textAlign: TextAlign.center,
                            ),
                          )
                        : ListView.builder(
                            itemCount: availableDevices.length,
                            itemBuilder: (context, index) {
                              final device = availableDevices[index];
                              return ListTile(
                                title: Text(device.platformName.isNotEmpty
                                    ? device.platformName
                                    : "Unknown Device"),
                                subtitle: Text(device.remoteId.toString()),
                              );
                            },
                          ),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
