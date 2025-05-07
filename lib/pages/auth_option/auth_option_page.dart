import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_finbrick/extension/extension.dart';
import '../../common_widgets/icon_buttons.dart';
import '../../common_widgets/logo_widget.dart';
import '../../common_widgets/round_image.dart';
import '../../core/constant/constant.dart';
import '../../core/routes/routes_name.dart';
import '../../core/theme/app_colors.dart';
import '../forget_page/forget_page.dart';
import '../support/support_page.dart';

class AuthOptionPage extends StatelessWidget {
  const AuthOptionPage({super.key});

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
          NotificationIconButton(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.notificationPage);
            },
          ),
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
            RoundedImage(size: 70, assetPath: 'images/Account-Profile.svg'),
            Text(
              'Welcome',
              style: context.textTheme.titleMedium,
            ),
            SizedBox(height: 4),
            Text(
              'Good Day',
              style: context.textTheme.headlineMedium?.copyWith(
                color: skyTextColor,
              ),
            ),
            SizedBox(height: 24),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.loginPage);
              },
              child: Text('Login'),
            ),
            SizedBox(height: 12),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.registerPage);
              },
              child: Text('Register'),
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.forgetPage);
                  },
                  child: Text('Forgotten'),
                ),
                Spacer(),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                )
              ],
            ),
            SizedBox(height: 50),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.compaignPage);
              },
              icon: SvgPicture.asset(
                'images/Compaigns.svg',
              ),
              label: Text('Campaign'),
            ),

            OutlinedButton.icon(
              onPressed: () {},
              icon:SvgPicture.asset(
                'images/ATM-Map.svg',
              ),
              label: Text('ATM Map'),
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.supportPage);
              },
              icon:SvgPicture.asset(
                'images/Support.svg',
              ),
              label: Text('Support'),
            ),
          ],
        ),
      )),
    );
  }
}
