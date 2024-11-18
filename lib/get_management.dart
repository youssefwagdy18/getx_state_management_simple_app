import 'package:get/get_state_manager/get_state_manager.dart';

class GetControl extends GetxController{
  int counter =0;
  int constant =0;

  void increment(){
    counter ++;
    update();
  }
  void decrement(){
    counter--;
    update();
  }
  int get sum => counter+constant;
}