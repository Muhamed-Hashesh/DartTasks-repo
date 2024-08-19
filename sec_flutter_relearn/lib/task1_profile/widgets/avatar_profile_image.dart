import 'package:flutter/material.dart';

class AvatarProfileImage extends StatelessWidget {
  const AvatarProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 64,
          backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            backgroundColor: Colors.yellow[700],
            radius: 15,
            child: const Center(
              child: Icon(
                Icons.ice_skating,
                color: Colors.black,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
