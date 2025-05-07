import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common_widgets/icon_buttons.dart';
import '../../common_widgets/logo_widget.dart';
import '../../common_widgets/round_image.dart';
import '../../core/constant/constant.dart' show kBodyHp;
import '../../core/theme/app_styles.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(),
        title: Text("Support"),
        centerTitle: true,
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
                  SizedBox(
                    height: 20,
                    child: LogoWidget(),
                  ),
                  const SizedBox(height: 16),

                  ListTile(
                    leading: SvgPicture.asset(
                      'images/Phone.svg',
                    ),
                    title: Text("Phone"),
                    subtitle: Text("+90 1234 567898"),
                    onTap: () {},
                  ),

                  ListTile(
                    leading: SvgPicture.asset(
                      'images/Mail.svg',
                    ),
                    title: Text("E-Mail"),
                    subtitle: Text("Info@finbrick"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/Facebook.svg',
                    ),
                    title: Text("Facebook"),
                    subtitle: Text("facebook.com/finbrick"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/Twitter.svg',
                    ),
                    title: Text("Twitter"),
                    subtitle: Text("twitter.com/finbrick"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/Instagram.svg',
                    ),
                    title: Text("Instagram"),
                    subtitle: Text("instagram.com/finbrick"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/LinkedIN.svg',
                    ),
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
