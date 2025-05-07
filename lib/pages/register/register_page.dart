import 'package:flutter/material.dart';
import 'package:my_finbrick/extension/extension.dart';
import '../../common_widgets/common_widgets.dart';
import '../../core/constant/constant.dart';
import '../../core/routes/routes_name.dart';
import '../../core/theme/app_styles.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
          MoonIconButton(
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Personal Information',
                        style: context.textTheme.titleLarge,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Name Surname',
                    style: context.textTheme.titleSmall,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Selin Cuzdan'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'E-Mail',
                    style: context.textTheme.titleSmall,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Selin Cuzdan'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Phone',
                    style: context.textTheme.titleSmall,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Selin Cuzdan'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Password',
                    style: context.textTheme.titleSmall,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter Your Password'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Enter Your Password'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'City',
                    style: context.textTheme.titleSmall,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Selin Cuzdan',
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesName.verificationPage);
                    },
                    child: Text('Continue'),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
