import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jogging_app/shared/app_colors.dart';
import 'package:jogging_app/shared/assets.dart';
import 'package:jogging_app/shared/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      bottomSheet: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 40),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             AppButton()
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        scrolledUnderElevation: 0,
       backgroundColor: AppColors.appColor, 
       leading:  CircleAvatar(
                    backgroundColor: Colors.brown,
                    child: Icon(Icons.person),
                  ),
         title:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Hello,',
                          style: interStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.spMin ,
                            color: AppColors.scaffoldColor
                          ),
                          children: [
                            TextSpan(
                              text: 'Andrew',
                              style: interStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.spMin ,
                            color: AppColors.scaffoldColor
                          ),
                            )
                          ]
                        )
                        ),
                        Text('Beginner', style: 
                        interStyle.copyWith(
                           fontWeight: FontWeight.w400,
                            fontSize: 11.spMin ,
                            color: AppColors.scaffoldColor
                        ),)
                    ],
                  )
         ,
         actions: [
           Icon(Icons.settings, color: Colors.white,)
         ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200.h,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
              Container(
                height: 150,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    ),
                ),
                ),
            Positioned(
              left: 20,
              right: 20,
              top: 80,
             
              child: Container(
                 height: 120.h,
                 width: MediaQuery.of(context).size.width,
                 padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16 ),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(16),
                   border: Border.all(
                    width: 3.w,
                    color: AppColors.appColor
                   ),
                   boxShadow: [
                     BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 5),
                  )
                   ]
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                           RichText(
                         text: TextSpan(
                           text: 'Week goal',
                           style: interStyle.copyWith(
                           fontWeight: FontWeight.w600,
                             fontSize: 14.spMin ,
                             color: AppColors.appBlack
                           ),
                           children: [
                             TextSpan(
                               text: ' 50 km',
                               style: interStyle.copyWith(
                             fontWeight: FontWeight.w700,
                             fontSize: 14.spMin ,
                             color: AppColors.appColor
                           ),
                             )
                           ]
                         )
                         ),
                         Icon(Icons.arrow_forward_ios_rounded)
                       ],
                     ),
                     SizedBox(height: 20,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('35 km done', 
                         style: interStyle.copyWith(
                           fontWeight: FontWeight.w500,
                           fontSize: 12.spMin,
                           color: AppColors.appBlack
                         ),),
                         Text('15 km', 
                         style: interStyle.copyWith(
                           fontWeight: FontWeight.w500,
                           fontSize: 12.spMin,
                           color: AppColors.appBlack
                         ),)
                       ],
                     ),
                     LinearProgressIndicator(
                       color: AppColors.appBlack,
                       valueColor: AlwaysStoppedAnimation(AppColors.appColor),
                       borderRadius: BorderRadius.circular(8),
                       value: 0.8,
                       minHeight: 12.h,
                     )
                   ],
                 ),
               ),
            )
                    ]  
            ),
          ),
          SizedBox(
            height: 25
          ),
          Container(
                height: 64,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius:BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Container(
                height: 40.h,
                width: 40.w,
                // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: AppColors.circleColor,
                 shape: BoxShape.circle
                ),
                child: SvgPicture.asset(AppAssets.runnerFull),
                ),
                SizedBox(width: 14,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Current Jogging', 
                         style: interStyle.copyWith(
                           fontWeight: FontWeight.w600,
                           fontSize: 14.spMin,
                           color: AppColors.scaffoldColor    
                      ),),
                     Text('01:09:44', 
                         style: interStyle.copyWith(
                           fontWeight: FontWeight.w400,
                           fontSize: 12.spMin,
                           color: AppColors.appBlack
                         ),), 
                  ],
                ),
                SizedBox(width: 24,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('10,9 km', 
                         style: interStyle.copyWith(
                           fontWeight: FontWeight.w600,
                           fontSize: 14.spMin,
                           color: AppColors.scaffoldColor    
                      ),),
                     Text('539 kcal', 
                         style: interStyle.copyWith(
                           fontWeight: FontWeight.w400,
                           fontSize: 12.spMin,
                           color: AppColors.appBlack
                         ),), 
                  ],
                ),
                  ],
                ),
                ),
             SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent activity', 
                         style: interStyle.copyWith(
                           fontWeight: FontWeight.w600,
                           fontSize: 14.spMin,
                           color: AppColors.appBlack
                   ),), 
                    Text('All', 
                         style: interStyle.copyWith(
                           fontWeight: FontWeight.w400,
                           fontSize: 14.spMin,
                           color: AppColors.appColor
                   ),), 
              ],
            ),
           SizedBox(height: 12,) ,
           Container(
            height: 300.h,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset(AppAssets.map_1Png,
                      fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                      ],
                    )
                  ],
                )
              ],
            ),
           )
        ],
      ),
      );
    
  }
}