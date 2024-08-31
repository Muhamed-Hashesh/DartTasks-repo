import 'package:flutter/material.dart';

class CustomNewsItem extends StatelessWidget {
  const CustomNewsItem({
    super.key,
    // required this.description,
  });

  // final String? description;

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
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv_nlQHGVCu6E0856FszKviuUsNdp26fgL_Q&s',
              ),
            ),
          ),
        ),
        Text('zsrxdtfycvuijksdlacsdkmckoasdmcklmasklcmasklmxcklasmxcklasmklc',
            style: TextStyle(fontSize: 24)),
        Text('description', style: TextStyle(fontSize: 16, color: Colors.grey)),
      ],
    );
  }
}
