import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SecondGrid extends StatefulWidget {
  const SecondGrid({Key? key}) : super(key: key);

  @override
  State<SecondGrid> createState() => _SecondGridState();
}

class _SecondGridState extends State<SecondGrid> {
  final List<String> _menuItems = ['Profile', 'Recent work', 'Hire', 'Reviews'];
  late String _selectedMenuItem;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: 'Search' ,

        suffixIcon: PopupMenuButton<String>(
          itemBuilder: (BuildContext context) {
            return _menuItems.map((String item) {
              return PopupMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList();
          },
          onSelected: (String selectedItem) {
            setState(() {
              _selectedMenuItem = selectedItem;
            });
          },
        ),
      ),
    );
  }


  Widget _buildImage() {
    return Container(
      height: 400,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //color: Colors.black45
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset("Images/profile.jpg",),
        ),
      );
  }
}
