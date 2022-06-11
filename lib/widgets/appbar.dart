import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar(
      {Key? key,
      required this.mainWord,
      this.greeting,
      this.visibleBackButton,
      this.hideDrawerButon})
      : super(key: key);

  final String? greeting;
  final String mainWord;
  final bool? visibleBackButton;
  final bool? hideDrawerButon;

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
     
      automaticallyImplyLeading: visibleBackButton ?? false,
      actions: <Widget>[
        hideDrawerButon ?? false
            ? const SizedBox()
            : Container(
                height: 10,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Colors.grey.shade300,
                      style: BorderStyle.solid,
                      width: 0.5,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                ),
              )
      ],
      title: RichText(
          text: TextSpan(
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontSize: 18,
        ),
        children: <TextSpan>[
          TextSpan(text: greeting ?? ''),
          TextSpan(
              text: mainWord,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      )),
    );
  }
}
