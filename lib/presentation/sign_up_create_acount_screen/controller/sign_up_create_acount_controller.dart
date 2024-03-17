import '../../../core/app_export.dart';import '../models/sign_up_create_acount_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpCreateAcountScreen.
///
/// This class manages the state of the SignUpCreateAcountScreen, including the
/// current signUpCreateAcountModelObj
class SignUpCreateAcountController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<SignUpCreateAcountModel> signUpCreateAcountModelObj = SignUpCreateAcountModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
