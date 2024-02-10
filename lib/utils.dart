import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void showLoading(BuildContext context) {
  showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 5,),
                Text("Loading.."),
              ],
            ),
          ),
        );
      }
  );
}

void hideLoading(BuildContext context){
  Navigator.pop(context);
}

void showMessage(BuildContext context , String message ,
    String posActionText , Function posAction,
{String? negActionText , Function? negAction}){
   showDialog(
       context: context,
       builder: (context){
         return AlertDialog(
           content: Text(message),
           actions: [
             TextButton(onPressed: (){
               posAction(context);
             },
                 child:Text(posActionText))
           ],
         );
       });
}

pickImage(ImageSource source) async{
final ImagePicker imagePicker =  ImagePicker();
XFile? file = await imagePicker.pickImage(source: source);
if(file != null){
  return await file.readAsBytes();
}
print('No Image Selected');
}


