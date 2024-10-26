import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff0081AF),
    Color(0xff00ABE7),
    Color(0xff2DC7FF),
    Color(0xffEAD2AC),
    Color(0xffEABA6B),
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color.fromRGBO(82, 2, 82, 1),
    Color(0xffD9E76C),
    Color(0xff537D8D),
    Color(0xff482C3D),
    Color.fromARGB(255, 17, 117, 29),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                    color: colors[index], isActive: currentIndex == index)),
          );
        },
      ),
    );
  }
}
