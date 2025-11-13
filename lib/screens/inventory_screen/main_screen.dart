import 'package:flutter/material.dart';
import 'package:mobile_pos/core/constants/app_constants.dart';
import 'package:mobile_pos/core/sections/app_bar.dart';
import 'package:mobile_pos/screens/inventory_screen/widgets/indicator_card.dart';

class InventoryScreen extends StatelessWidget{
  InventoryScreen({super.key});
  final bool isStockLow=true;
  final List<String> mostSold=["bru coffee powder bru coffee powder",'kadalai ennai bru coffee powder','deepam velaku oil bru coffee powder','deepam velaku oil bru coffee powder'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: posAppBar(
        title: "Inventory",
        actions: [
          IconButton(
              onPressed: ()=>Navigator.pushNamed(context, '/'), 
              icon: Icon(Icons.add,color: Colors.white,size: 30,)
          ),
        ]
      ),
      body: Column(
        children: [
          // low stock + product info
          isStockLow ? lowStockIndicatorCard(noOfLowStocks: 50) : SizedBox.shrink(),
          productInfoIndicatorCard(context, totProducts: 60, mostSoldProducts: mostSold),
          
          // filter + pagination
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // filter container
              Container(
                alignment: Alignment.center,
                height: 30,
                padding: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: appBgMildColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: appPrimaryColor,blurStyle: BlurStyle.outer,spreadRadius: 0,blurRadius: 2),
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.filter_list,size: 18, color: appTextColor,),
                    SizedBox(width: 5,),
                    Text('Filter by',style: TextStyle(fontWeight: FontWeight.w600,color: appPrimaryColor,fontSize: 12),),
                  ],
                ),
              ),
      
              // pagination container
              Container(
                alignment: Alignment.center,
                height: 30,
                padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: appBgMildColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: appPrimaryColor,blurStyle: BlurStyle.outer,spreadRadius: 0,blurRadius: 2),
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(child: Icon(Icons.arrow_back_ios,size: 18, color: appTextColor,),onTap: () {},),
                    SizedBox(width: 5,),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                      child: Text("1",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                    ),
                    SizedBox(width: 5,),
                    InkWell(child: Icon(Icons.arrow_forward_ios,size: 18, color: appTextColor,),onTap: () {}),
                  ],
                ),
              )
            ],
          ),

          // Product table
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
              decoration: BoxDecoration(
                color: appBgMildColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text("Table"),
            ),
          ),
        ],
      ),
    );

  }
}