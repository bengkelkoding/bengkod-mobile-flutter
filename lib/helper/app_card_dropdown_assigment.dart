
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';

import '../../../helper/app_card_assignment.dart';

class AppCardDropdown extends StatefulWidget {
  const AppCardDropdown({Key? key}) : super(key: key);

  @override
  State<AppCardDropdown> createState() => _AppCardDropdownState();
}

class _AppCardDropdownState extends State<AppCardDropdown> {
  bool _isExpanded = false;
  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    const double cardHeight = 175;
    return GestureDetector(
      onTap: _toggleExpansion,
      child: AnimatedContainer(
        width: MediaQueryWidth,
        duration:
            const Duration(milliseconds: 100), // Adjust animation duration
        height: _isExpanded ? 70 + (4 * cardHeight) : 62,
        decoration: BoxDecoration(
          color: AppColor.primaryColor, // Customize container color
          borderRadius: BorderRadius.circular(8), // Customize border radius
        ),
        child: Center(
          child: _isExpanded
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 62,
                        width: double.infinity,
                        child: Text(
                          "BENGKEL KODING - MOBILE DEV M01",
                          style: AppTextStyle.textStyle(
                            color: AppColor.whiteColor,
                            size: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true, // Set shrinkWrap to true
                          itemBuilder: (context, index) =>
                              CustomAssignmentCard(),
                          itemCount: 4,
                        ),
                      )
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          "BENGKEL KODING - MOBILE DEV M01",
                          textAlign: TextAlign.center,
                          style: AppTextStyle.textStyle(
                            color: AppColor.whiteColor,
                            size: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 20,
                        color: AppColor.whiteColor,
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
