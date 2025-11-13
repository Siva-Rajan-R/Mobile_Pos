import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/app_constants.dart';

Container shopInfoCard({required String shopName, required String shopDesc, required String gstNo, required String mobNo, String? shopImgUrl}){
  return Container(
    height: 175,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: appBgMildColor
    ),
    child: Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 140,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: shopImgUrl==null ? Icon(Icons.add_a_photo,size: 50,color: appPrimaryColor,)
          : Image.network(shopImgUrl)
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(shopName,style: TextStyle(color: appTextColor,fontSize: 18,fontWeight: FontWeight.w600,overflow: TextOverflow.ellipsis),),
              Text(shopDesc,style: TextStyle(color: appTextColor,fontSize: 14,fontWeight: FontWeight.w500),softWrap: true,maxLines: 2,overflow: TextOverflow.ellipsis,),
              Text("Gst : $gstNo",style: TextStyle(color: appTextColor,fontSize: 14,fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis),),
              Text("Mob no : $mobNo",style: TextStyle(color: appTextColor,fontSize: 14,fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis),)
            ],
          ),
        )
      ],
    ),
  );
}