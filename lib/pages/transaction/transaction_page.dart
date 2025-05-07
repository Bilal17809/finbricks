import 'package:flutter/material.dart';
import '../../common_widgets/icon_buttons.dart';
import '../../common_widgets/logo_widget.dart';
import '../../core/theme/app_colors.dart';

class TransctionPage extends StatelessWidget {
  const TransctionPage({super.key});

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
      body: Column(
        children: [
          CustomCardWithButton(),
          CustomListTileCard()
        ],
      ),
    );
  }
}


class CustomListTileCard extends StatelessWidget {
  const CustomListTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildTile(),
          _buildTile(),
          _buildTile(),
          _buildTile(),
        ],
      ),
    );
  }

  Widget _buildTile() {
    return ListTile(
      leading: Image.asset("images/tr_icon.png", width: 40, height: 40),
      title: const Text("John Doe", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: const Text("Subtitle or description goes here."),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Text("Active", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text("Today", style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}

class CustomCardWithButton extends StatelessWidget {
  const CustomCardWithButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("This is a title for the card",),
                const SizedBox(height: 8),
                const Text("Detail line 1"),
                const SizedBox(height: 4),
                const Text("Detail line 2"),
                const SizedBox(height: 4),
                const Text("Detail line 3"),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed:(){}, child:Text("image")),
                    ),
                    SizedBox(width: 16,),
                    Icon(Icons.search)
                  ],
                )
              ],
            ),
          ),

          const SizedBox(width: 16),

          Image.asset(
            "images/tr_icon.png",
            width: 70,
            height:120,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
