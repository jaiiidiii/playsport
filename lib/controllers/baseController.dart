import 'package:get/state_manager.dart';

class BaseController extends GetxController {
  RxString location = "".obs;

  var _currentIndex = 0.obs;
  var isLoading = true.obs;


  get currentIndex => _currentIndex.value;

  set currentIndex(index) {
    _currentIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
