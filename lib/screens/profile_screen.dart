import 'package:flutter/material.dart';
import 'package:modern_navbar/component/profile_image.dart';
import 'package:modern_navbar/component/profile_menu.dart';
import 'package:modern_navbar/constant/constant.dart';




class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios, size: 24, color: iconSecondaryColor,) ,
        title: Center(child: Text('Profile', style: textTitle )),
        actions: const [
          Icon(Icons.light_mode, size: 26, color: iconSecondaryColor,),
          SizedBox(width: 20,),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
        
              //image profile
              const ProfileImage(),
        
              //detail profile
              const SizedBox(height: 20,),
              Text('Supitcha Lengvattanakit', style: textTitle,),
              const SizedBox(height: 3 ,),
              Text('s6507012660133@email.kmutnb.ac.th', style: textSubTitle,),
        
              //button edit
              const SizedBox(height:10),
              SizedBox(
                width:200, 
                height: 35, 
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'Edit Profile', 
                    style: textBtn,
                    ),
                  ),
                ),
              ),
        
              //menu profile
              const SizedBox(height:30),
              const ProfileMenu(title: 'Setting',icons: Icons.settings),
              const ProfileMenu(title: 'Billing Detail',icons: Icons.wallet),
              const ProfileMenu(title: 'User Management',icons: Icons.person),
              const SizedBox(height: 40),
              const ProfileMenu(title: 'Information',icons: Icons.info_outline),
              const ProfileMenu(title: 'Logout',icons: Icons.logout_outlined),
              
            ],
          ),
        ),
      ),
    );
  }
}

