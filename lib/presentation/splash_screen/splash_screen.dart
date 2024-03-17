import 'package:flutter/material.dart';import 'package:almohsen_s_application11/core/app_export.dart';import 'controller/splash_controller.dart';class SplashScreen extends GetWidget<SplashController> {const SplashScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClarityEmployeeSolid, height: 102.adaptSize, width: 102.adaptSize), SizedBox(height: 24.v), Text("lbl_hired".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 5.v)])))); } 
 }
