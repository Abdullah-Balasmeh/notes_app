import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            backgroundColor: Colors.white.withAlpha(255),
            radius: 42,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 33,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 33,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({
    super.key,
  });

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int cIndex = 0;
  List<Color> colors = const [
    Color(0xff7FC6D8),
    Color(0xff6BD7D8),
    Color(0xff6DE5C9),
    Color(0xff8DF0AE),
    Color(0xffBFF78D),
    Color(0xffC0FAFF),
    Color(0xffFFE9D0),
    Color(0xff95B0B7),
    Color(0xffFF5A69),
    Color(0xffE4F1ED),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: GestureDetector(
                onTap: () {
                  cIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isSelected: cIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
