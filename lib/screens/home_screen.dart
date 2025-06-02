import 'package:flutter/material.dart';
import 'package:learn_and_practise/helper/call_phone.dart';
import 'package:learn_and_practise/helper/send_email.dart';
import 'package:learn_and_practise/utils/context_extension.dart';
import 'package:learn_and_practise/utils/user.dart';
import 'package:learn_and_practise/utils/view_user_profile.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<User> users = [
    User(
      'Mohamed Ali@gmail.com',
      'Mohamed Ali',
      '01221934874',
      'Flutter developer',
      'assets/images/me.jpg',
    ),
    User(
      'noha@gmail.com',
      'Noah',
      '0123720988',
      'Graphic designer',
      'https://thumb.ac-illust.com/be/bee98c70d1cfc02d0f387d2852464bf5_t.jpeg',
    ),
    User(
      'magdi@gmail.com',
      'magi',
      '08432222788',
      'drawer',
      'https://www.iconpacks.net/icons/1/free-user-icon-295-thumb.png',
    ),
    User(
      'hema@gmail.com',
      'hama',
      '32345455588',
      'backer',
      'https://www.google.com/imgres?q=person%20image%20icon%20jpg&imgurl=https%3A%2F%2Fst2.depositphotos.com%2F3369547%2F11481%2Fv%2F950%2Fdepositphotos_114817672-stock-illustration-avatar-man-icon-businesspeople-design.jpg',
    ),
    User(
      'mahy@gmail.com',
      'Macy',
      '012445456788',
      'engineer',
      'https://static.vecteezy.com/system/resources/previews/014/194/198/non_2x/avatar-icon-human-a-person-s-badge-social-media-profile-symbol-the-symbol-of-a-person-vector.jpg',
    ),
    User(
      'nader@gmail.com',
      'nader',
      '01978756788',
      'content creator',
      'https://visualpharm.com/assets/387/Person-595b40b75ba036ed117da139.svg',
    ),
    User(
      'wael@gmail.com',
      'wale',
      '06765456788',
      'project manager',
      'https://png.pngtree.com/png-vector/20190411/ourmid/pngtree-vector-business-man-icon-png-image_924785.jpg',
    ),
    User('ahmed@gmail.com', 'ahmed', '67655456788', 'sw engineer'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder:
              (context, index) => ListTile(
                onTap: () {
                  context.showSnackBar(
                    users[index].name,
                    actionLabel: 'view profile',
                    onClick: () {
                      viewUserDetails(context, users[index]);
                    },
                  );
                },
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    users[index].pic ??
                        'https://t4.ftcdn.net/jpg/02/29/75/83/360_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg',
                  ),
                ),
                title: Text(users[index].name),
                subtitle: Text(users[index].position),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => callUser(users[index].phone),
                        icon: const Icon(Icons.call, color: Colors.green),
                      ),

                      IconButton(
                        onPressed: () => sendEmail(users[index].email),
                        icon: const Icon(Icons.email, color: Colors.indigo),
                      ),
                    ],
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
