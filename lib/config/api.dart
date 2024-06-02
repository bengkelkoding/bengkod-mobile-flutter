class Api {
  static const baseUrl = 'https://bengkelkoding.rayhanashlikh.my.id';
  static const login = '$baseUrl/api/v1/auth/login';
  static const userProfile = '$baseUrl/api/v1/auth/profile';
  static const userProfileName = '$baseUrl/api/v1/auth/name';
  static const refreshToken = '$baseUrl/api/v1/auth/refresh-token';
  static const allCourses = '$baseUrl/api/v1/mobile/student/dashboard/courses';
  static const latestAssignment =
      '$baseUrl/api/v1/mobile/student/dashboard/latest-assignment';

  static const listClassroom = '$baseUrl/api/v1/mobile/student/classroom/';

  static const listLecture =
      '$baseUrl/api/v1/mobile/student/classroom/2/instructors';

  static const listStudent =
      '$baseUrl/api/v1/mobile/student/classroom/1/classmates';
  static const listInformation =
      '$baseUrl/api/v1/mobile/student/classroom/1/informations';
}
