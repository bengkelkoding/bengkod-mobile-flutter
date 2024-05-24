import 'package:bengkel_koding_mobile/features/classroom/controller/controller_classroom.dart';
import 'package:bengkel_koding_mobile/helper/app_card_classroom.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helper/app_appbar.dart';

class ClassView extends ConsumerStatefulWidget {
  const ClassView({super.key});

  @override
  ConsumerState<ClassView> createState() => _ClassViewState();
}

class _ClassViewState extends ConsumerState<ClassView> {
  @override
  Widget build(BuildContext context) {
    final allClassroom = ref.watch(ClassroomService.classroomProvider);

    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 37,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 4),
                      color: AppColor.blackColor.withOpacity(0.25),
                      blurRadius: 4),
                ],
              ),
              child: Center(
                child: Text(
                  "Kelas",
                  style: AppTextStyle.textStyle(
                    size: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: allClassroom.when(
                  data: (data) => ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final classroom = data[index];
                      return CustomClassroomCard(
                        nameClassroom: classroom.name,
                        description: classroom.description,
                        time: classroom.time,
                        day: classroom.day,
                        room: classroom.room,
                        finalScore: classroom.finalScore ?? 0,
                      );
                    },
                    itemCount: data.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 5),
                  ),
                  error: (error, stackTrace) => Center(
                    child: Text('Error: $error'),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
