// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

class DropGetXContoller extends GetxController {

  final search_hint = "Select Using Country Code *".obs;
  final showError = false.obs;

  void changeErrorState(bool value){
    showError.value = value;
  }
}