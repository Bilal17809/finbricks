import 'package:flutter/material.dart';
import '../../pages/pages.dart';
import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case RoutesName.splashPage:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case RoutesName.loginPage:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case RoutesName.dashboardPage:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      case RoutesName.settingPage:
        return MaterialPageRoute(builder: (_) => const SettingPage());
      case RoutesName.cardPage:
        return MaterialPageRoute(builder: (_) => const CardPage());
      case RoutesName.transferPage:
        return MaterialPageRoute(builder: (_) => const TransferPage());
      case RoutesName.walletPage:
        return MaterialPageRoute(builder: (_) => const WalletPage());

      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
