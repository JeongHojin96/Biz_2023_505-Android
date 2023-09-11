import 'package:flutter/material.dart';

AppBar mainAppBar(BuildContext context) => AppBar(
      title: const Text(
        "헬로",
      ),
      centerTitle: true,
      elevation: 0.0,
      actions: [
        IconButton(
          onPressed: () {
            const snackBar = SnackBar(content: Text("안녕"));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          icon: const Icon(Icons.person),
        )
      ],
    );
