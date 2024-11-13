import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CouterAppController extends GetxController{

  var counter=0.obs;

  //function for increament
void Increment(){
  counter.value++;
}

//funtion for decrement
void Decrement(){
  if(counter.value>0)
  {
  counter.value--;
  }
}
void reset(){
  counter.value=0;

}

}