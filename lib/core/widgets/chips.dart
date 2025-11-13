import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/app_constants.dart';

Widget revenueChipWidget(BuildContext context,{required String title, required int revenueAmt}) {
  return Container(
    width: MediaQuery.of(context).size.width*0.42,
    height: 70,
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      border: Border.all(color: appTextColor,width: 2.0),
      borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(color: appTextColor,fontSize: 14,fontWeight: FontWeight.w500),),
        SizedBox(height: 8,),
        Text("₹ ${revenueAmt.toString()}",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)
      ],
    ),
  );
}


Widget stocksIndicatorChipWidget(BuildContext context,{required String title, required int stocks}){
  return Container(
    width: MediaQuery.of(context).size.width*0.280,
    height: 95,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: appTextColor),
      borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
      children: [
        Expanded(child: Text(title,style: TextStyle(color: appTextColor,fontSize: 14,fontWeight: FontWeight.w600),maxLines: 1,overflow: TextOverflow.ellipsis,)),
        SizedBox(height: 10,),
        Text(stocks.toString(),style: TextStyle(color: appTextColor,fontSize: 24,fontWeight: FontWeight.w600),)
      ],
    ),
  );
}