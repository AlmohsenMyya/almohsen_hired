import '../../../core/app_export.dart';import '../models/add_new_education_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewEducationScreen.
///
/// This class manages the state of the AddNewEducationScreen, including the
/// current addNewEducationModelObj
class AddNewEducationController extends GetxController {TextEditingController schoolEditTextController = TextEditingController();

TextEditingController fieldOfStudyEditTextController = TextEditingController();

TextEditingController gradeEditTextController = TextEditingController();

TextEditingController descriptionEditTextController = TextEditingController();

Rx<AddNewEducationModel> addNewEducationModelObj = AddNewEducationModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); schoolEditTextController.dispose(); fieldOfStudyEditTextController.dispose(); gradeEditTextController.dispose(); descriptionEditTextController.dispose(); } 
onSelected(dynamic value) { for (var element in addNewEducationModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewEducationModelObj.value.dropdownItemList.refresh(); } 
 }
