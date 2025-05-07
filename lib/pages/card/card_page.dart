import 'package:flutter/material.dart';
import 'package:my_finbrick/extension/extension.dart';
import '../../common_widgets/logo_widget.dart';
import '../../core/constant/constant.dart';
import '../../core/routes/routes_name.dart';
import '../../core/theme/app_colors.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: 20,
          child: LogoWidget(),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lets Start!',
                    style: context.textTheme.headlineSmall,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Your fincrib Account was created successfully.\n'
                          'Now you can Login into you Account',
                      style: context.textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.registerPage);
                },
                style: TextButton.styleFrom(
                  foregroundColor: skyTextColor,
                ),
                child: Text('Login'),
              ),
              SizedBox(height: 16,)
            ],
          ),
        ),
      ),
    );
  }
}
