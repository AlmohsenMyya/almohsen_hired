import 'thirtyfourchipview_item_model.dart';import 'jobschipview_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [filter_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel {Rx<List<ThirtyfourchipviewItemModel>> thirtyfourchipviewItemList = Rx(List.generate(6,(index) =>ThirtyfourchipviewItemModel()));

Rx<List<JobschipviewItemModel>> jobschipviewItemList = Rx(List.generate(2,(index) =>JobschipviewItemModel()));

 }
