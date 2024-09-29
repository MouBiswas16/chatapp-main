import 'dart:io';
// import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImageCubit extends Cubit<File> {
  final _picker = ImagePicker();
  ProfileImageCubit() : super(File("path: ./chat")); //////////////////////// Problem May Occure Here

  Future<void> getImage() async {
    XFile? image =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    emit(File(image!.path));
  }
}
