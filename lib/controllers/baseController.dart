import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class BaseController extends GetxController {
  var _currentIndex = 0.obs;
  var isLoading = true.obs;
  var termsCheckbox = false.obs;
  var isPasswordObscure = true.obs;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  get currentIndex => _currentIndex.value;

  set currentIndex(index) {
    _currentIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
