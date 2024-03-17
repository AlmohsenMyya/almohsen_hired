import '../../../core/app_export.dart';import '../models/apply_job_model.dart';import 'package:flutter/material.dart';/// A controller class for the ApplyJobScreen.
///
/// This class manages the state of the ApplyJobScreen, including the
/// current applyJobModelObj
class ApplyJobController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController frameOneController = TextEditingController();

Rx<ApplyJobModel> applyJobModelObj = ApplyJobModel().obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); emailController.dispose(); frameOneController.dispose(); } 
 }
