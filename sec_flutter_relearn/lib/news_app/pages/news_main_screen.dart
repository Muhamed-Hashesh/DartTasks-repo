import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sec_flutter_relearn/news_app/cubit/call_news_cubit.dart';
import 'package:sec_flutter_relearn/news_app/widgets/custom_news_item.dart';

class NewsMainScreen extends StatelessWidget {
  NewsMainScreen({super.key}) {
    _dropdownValue = ValueNotifier(itemsList[0]['value']);
  }

  final List<Map<String, dynamic>> itemsList = [
    {
      'label': '🇪🇬 Arabic',
      'value': 'eg',
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

  late final ValueNotifier<String> _dropdownValue;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CallNewsCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        centerTitle: true,
        actions: [
          ValueListenableBuilder(
            valueListenable: _dropdownValue,
            builder: (context, value, child) {
              return DropdownButton(
                  value: value,
                  // hint: Text('🌏 Country'),
                  items: List.generate(
                    itemsList.length,
                    (index) => DropdownMenuItem(
                      value: itemsList[index]['value'],
                      child: Text(
                        itemsList[index]['label'],
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    _dropdownValue.value = value.toString();
                    cubit.getNews(country: value.toString());
                  });
            },
          )
        ],
      ),
      body: BlocBuilder<CallNewsCubit, CallNewsState>(
        builder: (context, state) {
          if (state is CallNewsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CallNewsSuccess) {
            final articles =
                context.read<CallNewsCubit>().newsModel.articles ?? [];
            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: articles.length, // Add itemCount
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: CustomNewsItem(
                    article: articles[index]), // Pass data to the item
              ),
            );
          }
          return const Center(
            child: Text(
              'Error',
              style: TextStyle(fontSize: 50),
            ),
          );
        },
      ),
    );
  }
}
