import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

// Custom AppBar as a PreferredSizeWidget
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      ),
      title: Center(
        child: Text(
          "Home",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Color(0xff4A4543),
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
      ],
    );
  }
}
