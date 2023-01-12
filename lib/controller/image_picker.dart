import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class imagepicker extends GetxController{
  File ?image;
  List<AssetEntity>? assets;
  bool imageshow=false;
  var  paths=<imagedetails>[].obs;

  String ?path;
  Future <void>getimage(BuildContext context) async {
    assets =
        await AssetPicker.pickAssets(
      context,
      pickerConfig: const AssetPickerConfig(requestType: RequestType.all),
    );
    print(assets?.length);
    for(int i=0;i<(assets?.length)!.toInt();i++){
     image= await assets?[i].file;
     path=image?.path;
     String type=(assets?[i].type).toString();
     print(path);
     if(path!=null){
       paths?.add(imagedetails(path.toString(),type));
       paths?.refresh();
     }

    }


    print(paths?.length);
    update();
  }
  remove(int a){
    if(paths.length>0) {
      paths.removeAt(a);
      //  paths?.refresh();
      update();
    }
    else{
      Get.snackbar(
          'Error',
          'No Items Found For Deletion',
          snackPosition: SnackPosition.BOTTOM
      );
    }
  }

}
class imagedetails{
  String imagepath;
  String type;
  imagedetails(this.imagepath,this.type);
}