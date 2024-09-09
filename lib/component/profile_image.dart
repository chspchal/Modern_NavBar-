import 'package:flutter/material.dart';
import 'package:modern_navbar/constant/constant.dart';



class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomRight,
      children: [
          CircleAvatar(
          backgroundColor: bgSecondaryColor,
          radius: 67,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'), 
            radius: 65,
            ),
          ),
          CircleAvatar(
            backgroundColor: bgPrimaryColor,
            radius: 22,
            child: CircleAvatar(
              backgroundColor: Colors.amber , 
              child: Icon(
                Icons.edit, 
                size: 20, 
                color: Colors.black,),
            ),
          ),   
        ],
    );
  }
}
