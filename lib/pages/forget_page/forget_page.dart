import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_finbrick/extension/extension.dart';

import '../../core/constant/constant.dart';
import '../support/support_page.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  bool showProfile = false;

  void toggleProfile() {
    setState(() {
      showProfile = !showProfile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'images/arrow_back.svg',
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to finbrick!",
                        style: context.textTheme.titleMedium,
                      ),
                      Text(
                        "Turgid Yildirim",
                        style: context.textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height:16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Center(
                            child: Text(
                              'Password',
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: SvgPicture.asset(
                              'images/ayes.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 16,),
                  SvgPicture.asset(
                    'images/group_eyes.svg',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
