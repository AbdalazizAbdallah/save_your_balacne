import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key, required this.mainWord, this.greeting})
      : super(key: key);

  final String? greeting;
  final String mainWord;
  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: <Widget>[
        Container(
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
      backgroundColor: Colors.transparent,
      elevation: 0,
      shape: Border(
          bottom: BorderSide(
        style: BorderStyle.solid,
        color: Colors.grey.shade300,
        width: 1,
      )),
      toolbarHeight: 80,
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
