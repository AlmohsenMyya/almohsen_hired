import '../../../core/app_export.dart';import '../models/message_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessagePage.
///
/// This class manages the state of the MessagePage, including the
/// current messageModelObj
class MessageController extends GetxController {MessageController(this.messageModelObj);

TextEditingController searchController = TextEditingController();

Rx<MessageModel> messageModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
