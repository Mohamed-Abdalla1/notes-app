
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive == true
        ? const CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Color(0xFFFFD740),
            ),
          )
        : const CircleAvatar(
            radius: 35,
            backgroundColor: Color(0xFFFFD740),
          );
  }
}

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  List<Color> colors = const[
    Color(0xffDE6B48),
    Color(0xffE5B181),
    Color(0xffF4B9B2),
    Color(0xffDAEDBD),
    Color(0xff7DBBC3),
  ];
  int? currentIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
