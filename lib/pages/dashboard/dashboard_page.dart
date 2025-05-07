import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../common_widgets/icon_or_svg.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_styles.dart';
import '../card/card_page.dart';
import '../setting/setting_page.dart';
import '../transfer/transfer_page.dart';
import '../wallet/wallet_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<PersistentTabConfig> _navBarItem() {
    return [
      PersistentTabConfig(
        screen: WalletPage(),
        item: ItemConfig(
          inactiveIcon: IconOrSvg(
            svgIconAsset: 'images/wallet.svg',
            color: kBlack,
          ),
          icon: IconOrSvg(
            svgIconAsset: 'images/wallet.svg',
            color: primaryColor,
          ),
        ),
      ),
      PersistentTabConfig(
        screen: TransferPage(),
        item: ItemConfig(
          inactiveIcon: IconOrSvg(
            svgIconAsset: 'images/swap.svg',
            color: kBlack,
          ),
          icon: IconOrSvg(
            svgIconAsset: 'images/swap.svg',
            color: primaryColor,
          ),
        ),
      ),
      PersistentTabConfig(
        screen: CardPage(),
        item: ItemConfig(
          inactiveIcon: IconOrSvg(
            svgIconAsset: 'images/card.svg',
            color: kBlack,
          ),
          icon: IconOrSvg(
            svgIconAsset: 'images/card.svg',
            color: primaryColor,
          ),
        ),
      ),
      PersistentTabConfig(
        screen: SettingPage(),
        item: ItemConfig(
          inactiveIcon: IconOrSvg(
            svgIconAsset: 'images/setting.svg',
            color: kBlack,
          ),
          icon: IconOrSvg(
            svgIconAsset: 'images/setting.svg',
            color: primaryColor,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      tabs: _navBarItem(),
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          color: kWhite,
          boxShadow: [
            boxShadow,
          ],
        ),
      ),
    );
  }
}
