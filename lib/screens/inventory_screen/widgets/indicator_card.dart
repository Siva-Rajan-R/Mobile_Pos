import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/app_constants.dart';
import 'package:mobile_pos/core/widgets/chips.dart';

Container lowStockIndicatorCard({required int noOfLowStocks}){
  return Container(
    alignment: Alignment.center,
    height: 35,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: errorBgColor
    ),
    child: Text("${noOfLowStocks.toString()} Items have low stocks",style: TextStyle(color: Color(0xFFFF0000),fontWeight: FontWeight.w400,fontSize: 16),),
  );
}


Container productInfoIndicatorCard(BuildContext context, {required int totProducts,required List<String> mostSoldProducts}){
  return Container(
    height: 130,
    padding: EdgeInsets.symmetric(horizontal: 10),
    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
    decoration: BoxDecoration(
      color: appBgMildColor,
      borderRadius: BorderRadius.circular(10),
      border: Border(top: BorderSide(color: appTextColor,width: 2))
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        stocksIndicatorChipWidget(context,title: "Products", stocks: totProducts),
        Expanded(
          child: Container(
            height: 95,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: appTextColor),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Most sold",style: TextStyle(color: appTextColor,fontWeight: FontWeight.w600,fontSize: 14),)
                  ],
                ),
                for(var item in mostSoldProducts.take(3).toList().asMap().entries)
                  Text('${item.key+1} - ${item.value}',style: TextStyle(color: appTextColor,fontWeight: FontWeight.w500,fontSize: 12),maxLines: 1,overflow: TextOverflow.ellipsis,)
              ],
            ),
          ),
        )
      ],
    ),
  );
}