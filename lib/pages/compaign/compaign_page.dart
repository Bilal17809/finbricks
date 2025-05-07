import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Important for SVG
import '../../common_widgets/icon_buttons.dart';
import '../../common_widgets/logo_widget.dart';
import '../../core/constant/constant.dart' show kBodyHp;
import '../../core/theme/app_styles.dart';

class CompaignPage extends StatelessWidget {
  const CompaignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(),
        title: Text("Compaigns"),
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
                  TextButton(onPressed:(){}, child:Text('Campaign')),
                  _buildCampaignCard('images/Mask.svg', 'Campaign 1'),
                  const SizedBox(height: 16),
                  _buildCampaignCard('images/Mask2.svg', 'Campaign 2'),
                  const SizedBox(height: 16),
                  _buildCampaignCard('images/Mask3.svg', 'Campaign 3'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCampaignCard(String imagePath, String title) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // make children take full width
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            child: SvgPicture.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 180,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
