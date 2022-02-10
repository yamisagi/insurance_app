import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
    
import 'core/locator.dart';
import 'core/router_constants.dart';
import 'core/router.dart' as router;
    
void main() async {
  await LocatorInjector.setUpLocator();
  runApp(const InsuranceMain());
}
    

class InsuranceMain extends StatelessWidget {
  const InsuranceMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: router.Router.generateRoute,
      initialRoute: insuranceViewRoute,
    );
  }
}
