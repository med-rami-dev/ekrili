import 'package:ekrili/features/user/presentation/view/widgets/user_body.dart';
import 'package:flutter/material.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    title: const Text('Logout'),
                    content: const Text('Are you sure you want to logout?'),
                    actions: [
                      TextButton(
                        child: const Text('Cancel',
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 1,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins-Regular')),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('Logout',
                            style: TextStyle(
                                color: Colors.red,
                                letterSpacing: 1,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins-Regular')),
                        onPressed: () {
                          //? Perform logout logic here
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: const UserViewBodyW(),
    );
  }
}
