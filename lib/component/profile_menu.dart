import 'package:flutter/material.dart';
import 'package:modern_navbar/constant/constant.dart';


class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData icons;

  const ProfileMenu({
    Key? key,
    required this.title,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:280,
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,      
              children: [
                CircleAvatar(
                  backgroundColor: bgThirdColor,
                  radius: 20,
                  child: Icon(
                    icons, 
                    size:24, 
                    color: iconPrimaryColor
                  ),
                ),
                const SizedBox(width: 20),
                Text(title, style: textMenu,),
                const Spacer(),
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 16,
                  child: const Icon(
                    Icons.arrow_forward_ios, 
                    size:20, 
                    color: iconSecondaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



