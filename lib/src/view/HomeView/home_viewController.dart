import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class IncrementController extends GetxController {
  var counter = 0.obs;

  // function for increment
  void increment() {
    // always use .value with variable for changing the value of obs variable
    counter.value++;
  }
//function of decrement
  void decrement() {
    if (counter.value > 0) {
      counter.value--;
    }

    //function of restart
    void reset(){

      counter.value=0;
    }

  }
}
