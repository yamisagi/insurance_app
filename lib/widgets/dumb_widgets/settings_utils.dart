import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insurance_app/widgets/dumb_widgets/dumb_searchbar_method.dart';



class SettingsView extends StatelessWidget {
  const SettingsView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      /// I will add [IconButtons] here.
      children: [
        searchBar(),
        const Divider(
          color: Colors.black,
          height: 5,
          indent: 22,
          endIndent: 22,
        ),
        const SizedBox(
          height: 5,
        ),
        
        buttonRow("Hesap Ayarları", Icons.settings),
        const Divider(
          color: Colors.black,
          height: 5,
          indent: 22,
          endIndent: 22,
        ),
        buttonRow("Profili Düzenle", Icons.edit),
        const Divider(
          color: Colors.black,
          height: 5,
          indent: 22,
          endIndent: 22,
        ),
        buttonRow("Kart Ayarları",Icons.card_membership),const Divider(
          color: Colors.black,
          height: 5,
          indent: 22,
          endIndent: 22,
        ),
        buttonRow("Çıkış Yap", Icons.exit_to_app),
        const Divider(
          color: Colors.black,
          height: 5,
          indent: 22,
          endIndent: 22,
        ),
        
      ],
    );
  }
}













Row buttonRow(String text, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Icon(icon),
        const SizedBox(
          width: 120,
        ),
        Center(
          child: TextButton(
              onPressed: () {},
              child: Text(
              text,
                style: GoogleFonts.oswald(color: Colors.black, fontSize: 20),
              )),
        ),
      ],
    );
  }