import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_finbrick/extension/extension.dart';
import '../../common_widgets/icon_buttons.dart';
import '../../common_widgets/info_row.dart';
import '../../common_widgets/logo_widget.dart';
import '../../core/constant/constant.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_styles.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MenuIcon(),
        title: SizedBox(
          height: 20,
          child: LogoWidget(),
        ),
        centerTitle: true,
        actions: [
          ProfileIcon(
            onTap: () {},
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          Center(child: CustomCard()),
          SvgPicture.asset(
            'images/group_card_wlt.svg',
          ),
          CustomCardWithButton(),
        ],
      ),
    );
  }
}



class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
      child: Container(
        decoration: roundedDecoration,
        width: double.maxFinite,
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("images/logo.png", height: 18),
                    const SizedBox(height: 5),
                    const Text("Bakiye Puan"),
                    const SizedBox(height: 5),
                    const Text("1742 220"),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Text("5293 59*****31"),
                    SvgPicture.asset(
                      "images/eye_circle.svg",height: 20,width: 20,)
                  ],
                ),
              ],
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Button 1"),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Button 2"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            InfoRow(
              label: "Varklar:",
              value: "580.504 \$",
              color: greenColor,
              icon: Icons.arrow_drop_up_sharp,
            ),
            InfoRow(
              label: "Bordar:",
              value: "580.504 \$",
              color: kRed,
              icon: Icons.arrow_drop_down_sharp,
            ),
            InfoRow(
              label: "Net Vatlik:",
              value: "580.504 \$",
              color: greenColor,
              icon: Icons.arrow_drop_up_sharp,
            ),
          ],
        ),
      ),
    );
  }
}
class CustomCardWithButton extends StatelessWidget {
  const CustomCardWithButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
      child: Container(
        decoration: roundedDecoration,
        width: double.maxFinite,
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
             Text(
              "Devoz Cevirica",
              style: context.textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                SvgPicture.asset(
                  'images/blue_country_icon.svg',
                  height: 20,
                  width: 20,
                ),
                OutlinedButton(onPressed:(){}, child:Row(
                  children: [
                    Text("Euro"),
                    Icon(Icons.arrow_drop_down),
                    Text("5000,00"),
                  ],
                ))
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'images/red_counrty.svg',
                  height: 20,
                  width: 20,
                ),
                OutlinedButton(onPressed:(){}, child:Row(
                  children: [
                    Text("Try"),
                    Icon(Icons.arrow_drop_down),
                    Text("8,0000"),
                  ],
                )),
                const Spacer(),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("AI/Sat"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
