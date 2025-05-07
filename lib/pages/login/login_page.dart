import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_finbrick/extension/extension.dart';

import '../../common_widgets/icon_buttons.dart';
import '../../common_widgets/icon_or_svg.dart';
import '../../common_widgets/logo_widget.dart';
import '../../common_widgets/round_image.dart';
import '../../core/constant/constant.dart';
import '../../core/routes/routes_name.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showProfile = false;

  void toggleProfile() {
    setState(() {
      showProfile = !showProfile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(),
        title: SizedBox(
          height: 20,
          child: LogoWidget(),
        ),
        centerTitle: true,
        actions: [
          // BackIconButton(),
          // NotificationIconButton(onTap: () {}),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [MoonIconButton(onTap: () {})],
              ),
              const SizedBox(height: 12),

              const SizedBox(height: 50),
              OutlinedButton.icon(
                onPressed: () {},
                icon: IconOrSvg(
                  svgIconAsset: 'mages/Phone.svg',
                ),
                label: Text('Campaign'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.access_time_filled),
                label: Text('ATM Map'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                style: AppTheme.outlinedButtonStyle.copyWith(

                ),
                icon: Icon(Icons.call),
                label: Text('Support'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: AppTheme.elevatedButtonStyle.copyWith(),
                child: Text('data'),
              )
            ],
          ),
        ),
      ),
    );
  }

Widget buildLogoView() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          RoundedImage(size: 70, assetPath: 'images/logo.png'),
          OutlinedButton.icon(
            onPressed: toggleProfile, // 👈 switch to woman profile
            icon: SvgPicture.asset('images/arrow_switch.svg',
                width: 24, height: 24),
            label: Text(''),
          ),
        ],
      ),
      const SizedBox(height: 8),
      Text('Welcome to finbrick', style: context.textTheme.titleMedium),
      const SizedBox(height: 4),
      Text('Good Day',
          style: context.textTheme.headlineMedium
              ?.copyWith(color: skyTextColor)),
      const SizedBox(height: 16),
      Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.registerPage);
              },
              child: Text('Login'),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.registerPage);
              },
              child: Text('Register'),
            ),
          ),
        ],
      )
    ],
  );
}

Widget buildProfileView() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          RoundedImage(size: 70, assetPath: 'images/woman.svg'),
          OutlinedButton.icon(
            onPressed: toggleProfile,
            icon: SvgPicture.asset('images/arrow_switch.svg',
                width: 24, height: 24),
            label: Text(''),
          ),
        ],
      ),
      const SizedBox(height: 8),
      Text('Welcome to finbrick', style: context.textTheme.titleMedium),
      const SizedBox(height: 4),
      Text('Hi, Selin',
          style: context.textTheme.headlineMedium
              ?.copyWith(color: skyTextColor)),
      const SizedBox(height: 16),

      Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.registerPage);
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: skyBorderColor,
              ),
              child: Text('Login'),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Forgotten?'),
            ),
          ),
        ],
      ),

      const SizedBox(height: 24),

      // 👇 Tab indicator
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildDot(isActive: true), // Blue
          const SizedBox(width: 8),
          buildDot(isActive: false), // Grey
        ],
      ),
    ],
  );
}

Widget buildDot({required bool isActive}) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 300),
    width: isActive ? 18 : 10,
    height: 10,
    decoration: BoxDecoration(
      color: isActive ? skyBorderColor : Colors.grey.shade400,
      borderRadius: BorderRadius.circular(isActive ? 8 : 5),
    ),
  );
}
}


class _LogoView extends StatelessWidget {
  const _LogoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class _bottomView extends StatelessWidget {
  const _bottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
