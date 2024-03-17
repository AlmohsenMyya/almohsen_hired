import 'package:almohsen_s_application11/core/app_export.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [new_position_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewPositionModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<DateTime>? selectedLabelText = Rx(DateTime.now());

Rx<String> labelText = Rx("Select Date");

Rx<DateTime>? selectedLabelText1 = Rx(DateTime.now());

Rx<String> labelText1 = Rx("Select Date");

 }
