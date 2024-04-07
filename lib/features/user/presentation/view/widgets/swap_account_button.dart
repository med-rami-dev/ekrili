import 'package:flutter/material.dart';

class SwitchAccountButton extends StatelessWidget {
  const SwitchAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.swap_horiz_outlined),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: const Text('Switch Account'),
              content: const Text(
                  'Are you sure you want to Switch Your Account To Renter?'),
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
                  child: const Text('Switch Account',
                      style: TextStyle(
                          color: Colors.green,
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
    );
  }
}
