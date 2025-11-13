

import 'package:flutter/material.dart';
import 'package:mobile_pos/core/sections/app_bar.dart';
import 'package:mobile_pos/screens/account_screen/widgets/account_card.dart';
import 'package:mobile_pos/screens/account_screen/widgets/setting_card.dart';
import 'package:mobile_pos/screens/account_screen/widgets/shop_card.dart';

class AccountScreen extends StatelessWidget{
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: posAppBar(title: "Account"),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            // account + shop info
            accountInfoCard(name: "Siva Rajan R", email: "siva967763@gmail.com"),
            shopInfoCard(shopName: "Akka Kadai", shopDesc: "this is akka kadai on this shop they provide super dupper foods all the meets are bought everyday", gstNo: "123456789012345", mobNo: '8248692839'),

            // Settings section
            // app setting
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [Text("App setting",style: TextStyle(color: Colors.black),)],
                  ),
                  SizedBox(height: 5,),
                  appSettingCard(title: "Notification", leadingIconName: Icons.notifications, leadingIconColor: Colors.orange),
                  appSettingCard(title: "About", leadingIconName: Icons.info, leadingIconColor: Colors.blue)
                ],
              ),
            ),
        
            // inventory setting
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [Text("Inventory setting",style: TextStyle(color: Colors.black),)],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      inventorySettingCard(context, title: "Export", leadingIconName: Icons.upload, leadingIconColor: Colors.green),
                      inventorySettingCard(context, title: "Download", leadingIconName: Icons.download, leadingIconColor: Colors.blueAccent)
                    ],
                  )
                ],
              ),
            ),

            //logout and version 
            Column(
              children: [
                appSettingCard(title: "Logout", titleColor: Colors.red,canShowTrailingIcon: false,alignment: MainAxisAlignment.center),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("App version 1.0.1")
                  ],
                ),
              ],
            ),

            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}