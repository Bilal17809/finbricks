import 'package:flutter/material.dart';
import 'package:my_finbrick/extension/extension.dart';
import '../../common_widgets/icon_buttons.dart';
import '../../common_widgets/logo_widget.dart';
import '../../core/constant/constant.dart' show kBodyHp;
import '../../core/theme/app_styles.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
          compaignIconButton(),
          SizedBox(width: 12),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
          child: Container(
            decoration: roundedDecoration,
            width: double.maxFinite,
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Notifications',
                    style: context.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),

                  ListTile(
                    leading:blueDot(),
                    title: Text("Phone"),
                    subtitle: Text("+90 1234 567898"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: blueDot(),
                    title: Text("E-Mail"),
                    subtitle: Text("Info@finbrick"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading:blueDot(),
                    title: Text("Facebook"),
                    subtitle: Text("facebook.com/finbrick"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: blueDot(),
                    title: Text("Twitter"),
                    subtitle: Text("twitter.com/finbrick"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: blueDot(),
                    title: Text("Instagram"),
                    subtitle: Text("instagram.com/finbrick"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: blueDot(),
                    title: Text("LinkedIN"),
                    subtitle: Text("linkedin.com/finbrick"),
                    onTap: () {},
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

Widget blueDot() {
  return Container(
    width: 12,
    height: 12,
    decoration: BoxDecoration(
      color: Colors.blue,
      shape: BoxShape.circle,
    ),
  );
}
