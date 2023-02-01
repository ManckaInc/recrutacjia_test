import 'package:image_picker/image_picker.dart';
import 'dart:io';

Future getImage() async {
  ImagePicker picker  = ImagePicker();
  final image = await picker.getImage(source: ImageSource.gallery);
  if(image == null) return;
  final img = File(image.path);

  return img;

}