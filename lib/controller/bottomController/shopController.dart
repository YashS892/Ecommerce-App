import 'package:get/get.dart';

class ShopController extends GetxController {
  RxInt selectIndex = 0.obs;
  RxList womenCategories = [
    {"type":"Tops"},
    {"type":"Shirts & Blouses"},
    {"type":"Cardigans & Sweaters"},
    {"type":"Knitwear"},
    {"type":"Blazers"},
    {"type":"Outerwear"},
    {"type":"pants"},
    {"type":"Jeans"},
    {"type":"Shorts"},
    {"type":"Skirts"},
    {"type":"Dresses"},
    {"type":"Sundress"},
    {"type":"Maxi Dress"},
    {"type":"Mini Dress"},
    {"type":"Ghagra choli"},
    {"type":"Sleeveless shirts"},
  ].obs;
  RxList menCategories = [
    {"type":"Sweaters"},
    {"type":"Shirts"},
    {"type":"Jeans"},
    {"type":"Gloves"},
    {"type":"Cap"},
    {"type":"Suit"},
    {"type":"Hawaiian shirt"},
    {"type":"Singlet"},
    {"type":"Business shoes"},
    {"type":"Flip flops"},
    {"type":"Shorts"},
    {"type":"Cardigan"},
    {"type":"Jackets"},
    {"type":"Sport shoes"},
    {"type":"Bow tie"},
    {"type":"T-shirt"},
  ].obs;
  RxList kidCategories = [
    {"type":"Skirts"},
    {"type":"Dress"},
    {"type":"Heels"},
    {"type":"Blouse"},
    {"type":"Stockings"},
    {"type":"Saree"},
    {"type":"Bathrobe"},
    {"type":"Cardigans"},
    {"type":"Coats"},
    {"type":"Coats"},
    {"type":"Dungarees"},
    {"type":"Evening gown"},
    {"type":"Shorts"},
    {"type":"Jacket"},
    {"type":"Scarf"},
    {"type":"Mini Skirt"},
  ].obs;
}