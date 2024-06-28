import 'package:get/get.dart';

class BagController extends GetxController {
  RxInt productCounter = 1.obs;

  RxList promoCodes = [
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvqQbsZU7RLd-BbICrOVVfldbBc6eHyVtTA&s",
      "offer":"10% off",
      "mainText":"Personal offer",
      "childText":"myPromocode2020",
      "validity":"6 days remaining",
    },
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlfdegW4rGELmRbi0GlvJu2f4lSFW7XFTyDg&s",
      "offer":"15% off",
      "mainText":"Summer sell",
      "childText":"summer2020",
      "validity":"26 days remaining",
    },
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlfdegW4rGELmRbi0GlvJu2f4lSFW7XFTyDg&s",
      "offer":"20% off",
      "mainText":"Personal offer",
      "childText":"myPromocode2020",
      "validity":"6 days remaining",
    },
    {
      "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUvqQbsZU7RLd-BbICrOVVfldbBc6eHyVtTA&s",
      "offer":"10% off",
      "mainText":"Personal offer",
      "childText":"myPromocode2020",
      "validity":"6 days remaining",
    },
  ].obs;
}
