import 'package:flutter/material.dart';

class Icon_navigate extends StatelessWidget {
  final IconData icon_bottom;
  final String name_icon;
  final Widget nextpage;

  const Icon_navigate({
    super.key,
    required this.icon_bottom,
    required this.name_icon,
    required this.nextpage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextpage),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon_bottom,
            color: Colors.black,
            size: 40,
          ),
          SizedBox(height: 5),
          Text(
            name_icon,
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
