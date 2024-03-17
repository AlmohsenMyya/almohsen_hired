import '../../../core/app_export.dart';import '../models/message_action_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessageActionScreen.
///
/// This class manages the state of the MessageActionScreen, including the
/// current messageActionModelObj
class MessageActionController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<MessageActionModel> messageActionModelObj = MessageActionModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.chatScreen, ); } 
 }
