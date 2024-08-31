import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sec_flutter_relearn/news_app/cubit/call_news_cubit.dart';
import 'package:sec_flutter_relearn/news_app/widgets/custom_news_item.dart';

class NewsMainScreen extends StatelessWidget {
  NewsMainScreen({super.key});

  final List<Map<String, dynamic>> itemsList = [
    {
      'label': '🇪🇬 Arabic',
      'value': 'ar',
    },
    {
      'label': '🇨🇦 Canada',
      'value': 'ca',
    },
    {
      'label': '🇷🇺 Russia',
      'value': 'ru',
    },
    {
      'label': '🇫🇷 France',
      'value': 'fr',
    },
    {
      'label': '🇺🇸 America',
      'value': 'us',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CallNewsCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
        centerTitle: true,
        actions: [
          DropdownButton(
              hint: Text('🌏 Country'),
              items: List.generate(
                5,
                (index) => DropdownMenuItem(
                  child: Text(
                    itemsList[index]['label'],
                  ),
                  value: itemsList[index]['value'],
                ),
              ),
              onChanged: (value) {})
        ],
      ),
      body: BlocBuilder<CallNewsCubit, CallNewsState>(
        builder: (context, state) {
          if (state is CallNewsLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CallNewsSuccess) {
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: CustomNewsItem()),
            );
          }
          return Center(
            child: Text('Error'),
          );
        },
      ),
    );
  }
}
