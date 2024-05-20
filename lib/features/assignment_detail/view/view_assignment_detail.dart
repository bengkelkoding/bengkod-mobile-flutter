import 'package:bengkel_koding_mobile/helper/app_appbar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../helper/app_button.dart';
import '../../../utils/app_colors_palette.dart';
import '../../../utils/app_font_styles.dart';

class AssignmentDetailView extends StatefulWidget {
  const AssignmentDetailView({super.key});

  @override
  State<AssignmentDetailView> createState() => _AssignmentDetailViewState();
}

String _result = "Upload File";

class _AssignmentDetailViewState extends State<AssignmentDetailView> {
  @override
  Widget build(BuildContext context) {
    FilePickerResult? result;
    // ignore: non_constant_identifier_names
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: MediaQueryHeight,
        width: MediaQueryWidth,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 145),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppButton(
                height: 37,
                content: Text(
                  "Quiz 1",
                  style: AppTextStyle.textStyle(
                      size: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColor.whiteColor),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Deskripsi",
                style: AppTextStyle.textStyle(
                    size: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                '''Quiz 1 Bengkel Koding Mobile
Quiz ini ditujukan untuk mengukur pemahaman mahasiswa terkait modul mobile Bengkel Koding. Diharapkan bisa dikerjakan sendiri dan dikerjakan dengan sungguh-sungguh.
Semangat!
LINK QUIZ TEST 1 : https://docs.google.com/forms/d/e/1FAIpQLScHV67ltxI_QoHBND0XEPWUc6fLvnvm6zQwLsn3aArzg3CqEQ/viewform''',
                style: AppTextStyle.textStyle(
                  size: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Waktu Mulai",
                style: AppTextStyle.textStyle(
                    size: 20, fontWeight: FontWeight.w500),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Date :",
                        style: AppTextStyle.textStyle(
                            size: 14, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Jum’at, 29 Maret 2024",
                        style: AppTextStyle.textStyle(
                            size: 14, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Time :",
                        style: AppTextStyle.textStyle(
                            size: 14, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "12:00 WIB",
                        style: AppTextStyle.textStyle(
                            size: 14, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 15),
              Text(
                "Waktu Tutup",
                style: AppTextStyle.textStyle(
                    size: 20, fontWeight: FontWeight.w500),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Date :",
                        style: AppTextStyle.textStyle(
                            size: 14, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Jum’at, 5 April 2024",
                        style: AppTextStyle.textStyle(
                            size: 14, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Time :",
                        style: AppTextStyle.textStyle(
                            size: 14, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "12:00 WIB",
                        style: AppTextStyle.textStyle(
                            size: 14, fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 15),
              Text(
                "File Soal",
                style: AppTextStyle.textStyle(
                  size: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 7),
              AppButton(
                height: 37,
                color: AppColor.thirdPrimaryColor,
                content: Text(
                  "Click to Download File",
                  style: AppTextStyle.textStyle(
                    size: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "Upload File",
                    style: AppTextStyle.textStyle(
                      size: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Maks 10 mb",
                    style: AppTextStyle.textStyle(
                      size: 11,
                      fontWeight: FontWeight.w500,
                      color: AppColor.redColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 7),
              GestureDetector(
                onTap: () async {
                  result =
                      await FilePicker.platform.pickFiles(allowMultiple: true);
                  setState(() {
                    _result = result != null
                        ? result!.files
                            .map((element) => element.name)
                            .join(", ")
                        : "Upload File";
                  });
                },
                child: DottedBorder(
                  color: AppColor.blackColor,
                  strokeWidth: 1.5,
                  dashPattern: const [5, 5],
                  radius: const Radius.circular(10),
                  borderType: BorderType.RRect,
                  strokeCap: StrokeCap.round,
                  child: SizedBox(
                    height: 90,
                    width: double.infinity,
                    child: Center(
                      child: SizedBox(
                        width: 500,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: SvgPicture.asset(
                                "assets/icon/icon_file_search.svg",
                                height: 16,
                                width: 16,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Flexible(
                              child: Text(
                                _result,
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _showSelectedFilesDialog(context, _result, result);
                    _result = result != null
                        ? result!.files
                            .map((element) => element.name)
                            .join(", ")
                        : "Upload File";
                    ;
                  });
                  print(result);
                },
                child: AppButton(
                  height: 37,
                  color: AppColor.primaryColor,
                  content: Text(
                    "Submit",
                    style: AppTextStyle.textStyle(
                      size: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showSelectedFilesDialog(
    BuildContext context, String selectedFiles, FilePickerResult? result) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Selected Files"),
        content: Text(selectedFiles),
        actions: [
          TextButton(
            onPressed: () {
              result = null;
              Navigator.of(context).pop();
            },
            child: const Text("Close"),
          ),
        ],
      );
    },
  );
}
