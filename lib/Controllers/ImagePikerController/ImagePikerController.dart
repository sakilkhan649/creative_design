import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePikerController extends GetxController{
  RxString imagepath="".obs;
  Future getImage(var value)async{
    final ImagePicker picker =ImagePicker();
    final image=await picker.pickImage(source: value);
    if(image != null){
      imagepath.value=image.path.toString();
    }
  }
}