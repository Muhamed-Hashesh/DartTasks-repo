import 'package:flutter/material.dart';
import 'package:sec_flutter_relearn/news_app/models/news_model.dart';

class CustomNewsItem extends StatelessWidget {
  const CustomNewsItem({
    super.key,
    required this.article,
    // required this.description,
  });

  // final String? description;
  final Articles article;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                article.urlToImage ??
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv_nlQHGVCu6E0856FszKviuUsNdp26fgL_Q&s',
              ),
            ),
          ),
        ),
        Text(article.title ?? 'No Title', style: const TextStyle(fontSize: 20)),
        Text(article.description ?? 'No Description',
            style: const TextStyle(fontSize: 16, color: Colors.grey)),
      ],
    );
  }
}
