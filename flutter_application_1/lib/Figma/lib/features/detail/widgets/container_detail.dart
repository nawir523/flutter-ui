import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/features/detail/widgets/add_to_cart_detail.dart';
import 'package:flutter_application_1/features/detail/widgets/nama_produk_harga_detail.dart';
import 'package:flutter_application_1/features/detail/widgets/select_color_detail.dart';
import 'package:flutter_application_1/features/detail/widgets/select_quantity_detail.dart';

class ContainerDetail extends StatefulWidget {
  const ContainerDetail({super.key});

  @override
  State<ContainerDetail> createState() => _ContainerDetailState();
}

class _ContainerDetailState extends State<ContainerDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 381,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            width: 36,
            height: 5,
            color: const Color(0xFFD8D8D8),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NamaProdukHargaDetail(),
                const SizedBox(height: 9),
                SvgPicture.asset("assets/icons/Score.svg"),
                const SizedBox(height: 21),
                const SelectColorDetail(),
                const SizedBox(height: 19),
                const SelectQuantityDetail(),
                const SizedBox(height: 32),
                SizedBox(
                  height: 60,
                  child: Text(
                    "Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFADADAD),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const AddToCartDetail(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}