import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class PickImage extends StatefulWidget {
  const PickImage({super.key});

  @override
  State<PickImage> createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  File? image;
  String imageApi = "";

  Future getImage() async {
    ImagePicker picker = ImagePicker();
    // ignore: deprecated_member_use
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        imageApi = pickedFile.path;
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        image != null
            ? Container(
                width: screenWidth(context) * 0.5,
                height: screenHeight(context) * 0.18,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MazzoonColor,
                    image: DecorationImage(
                        image: FileImage(
                          image!,
                        ),
                        fit: BoxFit.cover)),
              )
            : Container(
                width: screenWidth(context) * 0.5,
                height: screenHeight(context) * 0.18,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MazzoonColor,
                    image: const DecorationImage(
                        image: AssetImage(
                          ("asset/images/image 2.png"),
                        ),
                        fit: BoxFit.cover)),
              ),
        const VerticalSpace(value: 1.5),
        InkWell(
          onTap: () async {
            await getImage();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/images/Edit 2.png'),
              SizedBox(
                width: screenWidth(context) * 0.02,
              ),
              Text(
                'تغيير الصورة الشخصية',
                style: headingStyle.copyWith(
                    color: blueColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        )
      ],
    );
  }
}
