import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/app_constants.dart';

Container appSettingCard({required String title,Color titleColor=appPrimaryColor, IconData? leadingIconName, Color? leadingIconColor, bool canShowTrailingIcon=true, MainAxisAlignment alignment=MainAxisAlignment.spaceBetween }){
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(10),
    height: 60,
    decoration: BoxDecoration(
      color: appBgMildColor,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Row(
      mainAxisAlignment: alignment,
      children: [
        Row(
          children: [
            leadingIconName!=null && leadingIconColor!=null? Icon(leadingIconName,size: 30,color: leadingIconColor,) : SizedBox.shrink(),
            SizedBox(width: 10,),
            Text(title,style: TextStyle(color: titleColor,fontWeight: FontWeight.w600,fontSize: 18,overflow: TextOverflow.ellipsis)),
          ],
        ),
        canShowTrailingIcon? Row(
          children: [
            Icon(Icons.arrow_forward_ios,size: 30,color: appTextColor,),
          ],
        ) : SizedBox.shrink()
      ],
    ),
  );
}


Container inventorySettingCard (BuildContext context,{required String title,required IconData leadingIconName, required Color leadingIconColor }){
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(10),
    width: MediaQuery.of(context).size.width*0.5-20,
    height: 60,
    decoration: BoxDecoration(
      color: appBgMildColor,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Row(
      children: [
        Icon(leadingIconName,size: 30,color: leadingIconColor,),
        SizedBox(width: 10,),
        Expanded(child: Text(title,style: TextStyle(color: leadingIconColor,fontWeight: FontWeight.w600,fontSize: 18),overflow: TextOverflow.ellipsis,softWrap: true,)),
      ],
    ),
  );
}