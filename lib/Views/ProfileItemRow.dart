import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileItemRow extends StatelessWidget {

   final IconData icon;
   final String title;
   final VoidCallback? ontap;

  const ProfileItemRow({Key? key, required this.icon, required this.title, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width * 1;
    var _height = MediaQuery.of(context).size.height * 1;

    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        width: _width,
        height: _height*0.1,
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(icon),
                    SizedBox(width: 10,),
                    Text(title)
                  ],
                ),
                Icon(Icons.navigate_next),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
