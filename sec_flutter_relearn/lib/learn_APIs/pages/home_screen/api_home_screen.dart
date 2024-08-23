import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sec_flutter_relearn/learn_APIs/cubit/api_handler_cubit.dart';

class ApiHomeScreen extends StatelessWidget {
  const ApiHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ApiHandlerCubit>();
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text('data'),
        centerTitle: true,
      ),
      body: BlocBuilder<ApiHandlerCubit, ApiHandlerState>(
        builder: (context, state) {
          if (state is ApiHandlerLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ApiHandlerError) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else {
            return ListView.separated(
              itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.access_alarm),
                title: Text(cubit.usersList[index].name.toString()),
                subtitle: Text(cubit.usersList[index].email.toString()),
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: cubit.usersList.length,
            );
          }
        },
      ),
    );
  }
}
