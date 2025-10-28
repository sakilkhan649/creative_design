import 'package:get/get.dart';

class ProductController extends GetxController {
  final List<Map<String, dynamic>> productlist = [
    {
      "name": "Homemade food",
      "date": "Home-cooked meals ",
      "image": "assets/plateicon.png",
    },
    {
      "name": "Clothes",
      "date": "Folded or packed securely.",
      "image": "assets/sharticon.png",
    },
    {
      "name": "Documents",
      "date": "No Passport or bank cheques",
      "image": "assets/notebookicon.png",
    },
    {
      "name": "Gifts",
      "date": "Flowers, cards, chocolates, and others",
      "image": "assets/gifticon.png",
    },

    {
      "name": "Cosmetics",
      "date": "Makeup, skincare, or hygiene products.",
      "image": "assets/mosjidicon.png",
    },
    {
      "name": "Medicine",
      "date": "Prescription or over the counter medicines",
      "image": "assets/bageicon.png",
    },
    {
      "name": "Accessories",
      "date": "Watches, jewelry, bags, shoes etc,",
      "image": "assets/bagetwoicon.png",
    },
    {
      "name": "Electronics",
      "date": "Stationery, small tools, or household items",
      "image": "assets/plalugicon.png",
    },
  ].obs;
}
