import 'label_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [onboarding_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingOneModel {Rx<List<LabelItemModel>> labelItemList = Rx(List.generate(1,(index) => LabelItemModel()));

 }
