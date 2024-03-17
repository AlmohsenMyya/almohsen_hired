import '../../../core/app_export.dart';import '../models/new_position_model.dart';import 'package:flutter/material.dart';/// A controller class for the NewPositionScreen.
///
/// This class manages the state of the NewPositionScreen, including the
/// current newPositionModelObj
class NewPositionController extends GetxController {TextEditingController frameOneEditTextController = TextEditingController();

TextEditingController nameEditTextController = TextEditingController();

TextEditingController locationEditTextController = TextEditingController();

TextEditingController frameOneEditTextController1 = TextEditingController();

Rx<NewPositionModel> newPositionModelObj = NewPositionModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); frameOneEditTextController.dispose(); nameEditTextController.dispose(); locationEditTextController.dispose(); frameOneEditTextController1.dispose(); } 
onSelected(dynamic value) { for (var element in newPositionModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} newPositionModelObj.value.dropdownItemList.refresh(); } 
 }
