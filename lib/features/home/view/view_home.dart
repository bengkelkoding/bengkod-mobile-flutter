import 'package:bengkel_koding_mobile/features/home/controller/controller_home.dart';
import 'package:bengkel_koding_mobile/helper/app_appbar.dart';
import 'package:bengkel_koding_mobile/helper/app_card_assignment.dart';
import 'package:bengkel_koding_mobile/helper/app_card_courses.dart';
import 'package:bengkel_koding_mobile/helper/app_card_mentor.dart';
import 'package:bengkel_koding_mobile/helper/app_card_our_courses.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../helper/app_card_latest_assignment.dart';
import '../../../helper/app_card_your_courses.dart';
import '../../profile/controller/controller_profile.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    final allCourses = ref.watch(AllCourses.allCoursesProvider);
    final userProfile = ref.read(UserProfileName.profileProvider);
    final listCourse = ref.read(Course.coursesProvider);
    // ignore: non_constant_identifier_names
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final MediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        name: userProfile.when(
          data: (profile) => 'Hi, ${profile.name}',
          loading: () => 'Loading...',
          error: (error, stack) => 'Error',
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQueryWidth,
        height: MediaQueryHeight,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 145, bottom: 20),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kursus Kami",
                style: AppTextStyle.textStyle(
                  size: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColor.blackColor,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: MediaQueryHeight * 0.23,
                child: allCourses.when(
                  data: (data) => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final course = data[index];
                      return AppOurCardCourses(
                        image: "assets/image/image_course2.png",
                        studentCount: course.studentCount,
                        nameCourse: course.title,
                        description: course.description,
                      );
                    },
                    itemCount: data.length,
                  ),
                  error: (Object error, StackTrace stackTrace) {
                    return null;
                  },
                  loading: () {
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Kursus Yang Kamu Ikuti",
                style: AppTextStyle.textStyle(
                  size: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColor.blackColor,
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () => context.go("/classroom"),
                child: const AppCardYourCourse(),
              ),
              const SizedBox(height: 15),
              Text(
                "Mentor Bengkel Koding",
                style: AppTextStyle.textStyle(
                  size: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColor.blackColor,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: MediaQueryHeight * 0.18,
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const AppCardMentor();
                  },
                  itemCount: 8,
                ),
              ),
              Text(
                'Kursus Yang Sedang dikerjakan',
                style: AppTextStyle.textStyle(
                  size: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColor.blackColor,
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () =>
                    context.push("/classroom/moduldashboard/modullist"),
                child: SizedBox(
                    height: MediaQueryHeight * 0.32,
                    child: listCourse.when(
                      data: (data) => ListView.builder(
                        padding: const EdgeInsets.only(top: 0),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          final courses = data[index];
                          return CustomCourseCard(
                            title: courses.title,
                            descriptionCourse: courses.description,
                            progress: courses.courseProgress,
                          );
                        },
                        itemCount: data.length,
                      ),
                      error: (error, stackTrace) => Center(
                        child: Text('Error: $error'),
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )),
              ),
              const SizedBox(height: 15),
              Text(
                "Penugasan Terbaru",
                style: AppTextStyle.textStyle(
                  size: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColor.blackColor,
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () => context.go("/assignment"),
                child: SizedBox(
                  height: MediaQueryHeight * 0.25,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 0),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return const CustomLatestAssignmentCard();
                    },
                    itemCount: 1,
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
