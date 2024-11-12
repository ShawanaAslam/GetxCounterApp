import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class IncrementController extends GetxController {
  var counter = 0.obs;

  // function for increment
  void increment() {
    // always use .value with variable for changing the value of obs variable
    counter.value++;
  }

  void decrement() {
    if (counter.value > 0) {
      counter.value--;
    }
  }
}
