import 'package:get/get.dart';

class Controller extends GetxController {
  RxDouble amount = 12000.0.obs;
  RxInt counter = 0.obs;

 incresment() => counter++;

  amountSlider(double value) {
    amount = value.obs;
    print(amount);
    // update();
  }
}
