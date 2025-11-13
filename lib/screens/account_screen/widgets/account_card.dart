import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/app_constants.dart';

Container accountInfoCard({required String name,required String email,String? imageUrl}){
  return Container(
    height: 90,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: appBgMildColor
    ),
    child: Row(
      children: [
        SizedBox(width: 10,),
        Container(
          alignment: Alignment.center,
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.deepPurpleAccent
          ),
          child: imageUrl!=null? Image.network(imageUrl) 
          : Text(name.substring(0,2).toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 24),),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,style: TextStyle(color: appTextColor,fontWeight: FontWeight.w600,fontSize: 18),),
            Text(email,style: TextStyle(color: appTextColor,fontWeight: FontWeight.w500,fontSize: 16),),
          ],
        )
      ],
    ),
  );
}
