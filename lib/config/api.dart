class Api {
  static const baseUrl = 'http://52.221.47.126';
  static const login = '$baseUrl/api/v1/auth/login';
  static const userProfile = '$baseUrl/api/v1/auth/profile';
  static const userProfileName = '$baseUrl/api/v1/auth/name';
  static const refreshToken = '$baseUrl/api/v1/auth/refresh-token';
  static const allCourses = '$baseUrl/api/v1/mobile/student/dashboard/courses';
  static const latestAssignment =
      '$baseUrl/api/v1/mobile/student/dashboard/latest-assignment';
  static const listClassroom = '$baseUrl/api/v1/mobile/student/classroom/';
}
