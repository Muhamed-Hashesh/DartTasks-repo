import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sec_flutter_relearn/learn_APIs/cubit/api_handler_cubit.dart';
import 'package:sec_flutter_relearn/learn_APIs/models/user_card_model.dart';
import 'package:sec_flutter_relearn/learn_APIs/services/user_data.dart';

class ApiHomeScreen extends StatelessWidget {
  const ApiHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ApiHandlerCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        centerTitle: true,
      ),
      body: BlocBuilder<ApiHandlerCubit, ApiHandlerState>(
        builder: (context, state) {
          // print(cubit.usersList[1].email.toString());
          return ListView.separated(
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text(cubit.usersList[index].name.toString()),
              subtitle: Text(cubit.usersList[index].email.toString()),
            ),
            separatorBuilder: (context, index) => SizedBox(height: 8),
            itemCount: cubit.usersList.length,
          );
        },
      ),
    );
  }
}
