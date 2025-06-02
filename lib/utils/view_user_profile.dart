import 'package:flutter/material.dart';
import 'package:learn_and_practise/utils/user.dart';

void viewUserDetails(context, User user) {
  showModalBottomSheet(
    context: context,
    builder:
        (context) => ListView(
          children: [
            ListTile(title: Text(user.name), trailing: Text(user.position)),
            Image.network(
              user.pic ??
                  'https://t4.ftcdn.net/jpg/02/29/75/83/360_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg',
              width: 120,
            ),
            ListTile(leading: const Icon(Icons.phone), title: Text(user.phone)),
            ListTile(leading: const Icon(Icons.email), title: Text(user.email)),
            // TextButton(
            //   onPressed: () {
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       SnackBar(
            //         content: Text(user.name),
            //         action: SnackBarAction(
            //           label: 'you view that profile',
            //           onPressed: () {
            //             //removes the snackbar
            //             ScaffoldMessenger.of(context).hideCurrentSnackBar();
            //           },
            //         ),
            //       ),
            //     );
            //   },
            //   child: const Text('view profiled'),
            // ),
          ],
        ),
  );

  // print(user.name);
}
