import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_finbrick/extension/extension.dart';
import '../../common_widgets/common_widgets.dart';
import '../../core/constant/constant.dart';
import '../../core/routes/routes_name.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_styles.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

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
            onTap: () {},
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
          child: Container(
            decoration: roundedDecoration,
            width: double.maxFinite,
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Verification',
                      style: context.textTheme.titleLarge,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'Verification Line 1 Line 2 Line 3',
                        style: context.textTheme.bodySmall,
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:12),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded( // or Flexible
                            child: OtpInput(onChanged: (value) {}),
                          ),
                          SvgPicture.asset(
                            'images/done.svg',
                            width: 18,
                            height:18,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesName.registerPage);
                        },
                        child: Text('Confirm'),
                      ),
                      SizedBox(height: 16),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor:skyBorderColor,
                        ),
                        child: Text('Send Again 0.59'),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.biometricLogin);
                  },
                  child: Text('Continue'),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
