import 'package:bengkel_koding_mobile/helper/app_listview_information.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

class AppCardInformation extends StatefulWidget {
  const AppCardInformation({Key? key}) : super(key: key);

  @override
  State<AppCardInformation> createState() => _AppCardInformationState();
}

class _AppCardInformationState extends State<AppCardInformation> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpansion,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        height: _isExpanded ? null : 120,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Gabung group WhatsApp untuk bisa mendapatkan informasi seputar kelas dan dapat berdiskusi",
                style: AppTextStyle.textStyle(
                  color: AppColor.blackColor,
                  size: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "https://chat.whatsapp.com/ETD93Wb90zn7MqMN6zWDbg  ",
                style: AppTextStyle.textStyle(
                  color: AppColor.secondPrimaryColor,
                  size: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2),
              if (_isExpanded)
                LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final itemHeight =
                        85; // Ganti dengan tinggi item sebenarnya
                    final totalHeight =
                        4 * itemHeight; // Hitung tinggi total ListView
                    return SizedBox(
                      height: totalHeight.toDouble(),
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            const ListViewStudent(),
                        separatorBuilder: (context, index) => Divider(),
                        itemCount: 4,
                      ),
                    );
                  },
                ),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: _toggleExpansion,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _isExpanded ? "Lihat Lebih Sedikit" : "Lihat Semua",
                      style: AppTextStyle.textStyle(
                        color: Colors.grey,
                        size: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      _isExpanded
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
