import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sec_flutter_relearn/cubit_learn/cubit/counter_cubit.dart';
import 'package:sec_flutter_relearn/cubit_learn/cubit/counter_state.dart';

class LearnCubit extends StatelessWidget {
  const LearnCubit({super.key});

  @override
  Widget build(BuildContext context) {
    var cubitObject = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Cubit'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: 'btn1', // Ensure different hero tags for the buttons
              onPressed: () => cubitObject.increaseCount(),
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 16,
            ),
            FloatingActionButton(
              heroTag: 'btn2', // Ensure different hero tags for the buttons
              onPressed: () => cubitObject.decreaseCount(),
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Text(
              cubitObject.count.toString(),
              style: const TextStyle(fontSize: 48),
            );
          },
        ),
      ),
    );
  }
}
