import '../../../core/app_export.dart';import '../models/sign_up_complete_account_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpCompleteAccountScreen.
///
/// This class manages the state of the SignUpCompleteAccountScreen, including the
/// current signUpCompleteAccountModelObj
class SignUpCompleteAccountController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpCompleteAccountModel> signUpCompleteAccountModelObj = SignUpCompleteAccountModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); lastNameController.dispose(); passwordController.dispose(); } 
 }
