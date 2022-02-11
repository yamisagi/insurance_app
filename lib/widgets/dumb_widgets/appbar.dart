import 'package:flutter/material.dart';
import 'package:insurance_app/views/home/settings_page.dart';
import 'dumb_icon_buttons.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key key, this.route, this.color, this.icon, this.title})
      : super(key: key);

  /// route kw for [Navigator.push(context, route)]
  final Widget route;
  final Color color;
  final IconData icon;
  final Widget title;
  

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: color,
      elevation: 0,
      leading: UsedButtons(icon: icon, route: route),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}

///* Used Old Method Here For Appbar

// AppBar appBar({ @required Widget route, Widget route2}) {
//   return AppBar(
//     backgroundColor: Colors.white,
//     elevation: 0,
//     leading: UsedButtons(route: route),
//     actions: [
//       IconButton(
//         onPressed: () {
//         },
//         icon: const Icon(
//           Icons.settings,
//           color: Colors.black,
//         ),
//       )
//     ],
//   );
// }


