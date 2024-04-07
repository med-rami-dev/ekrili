import 'package:ekrili/core/utils/styles.dart';
import 'package:ekrili/features/user/presentation/view/widgets/logout_button_with_dialog.dart';
import 'package:ekrili/features/user/presentation/view/widgets/swap_account_button.dart';
import 'package:ekrili/features/user/presentation/view/widgets/user_body.dart';
import 'package:flutter/material.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        title: Text(
          'Profile',
          style: Styles.textStyle14.copyWith(
              color: Colors.black,
              letterSpacing: 1,
              fontSize: 17,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins-Regular'),
        ),
        centerTitle: true,
        leading: const SwitchAccountButton(),
        actions: const [
          LogoutButtonWithDialog(),
        ],
        backgroundColor: Colors.white,
        expandedHeight: 55.0,
        floating: false,
        pinned: false,
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        const UserViewBodyW(),
      ]))
    ]));
  }
}
