class Api {
  static const base_url = 'http://10.0.2.2:8000';
  static const login = '$base_url/api/v1/auth/login';
  static const userProfile = '$base_url/api/v1/auth/profile';
  static const refreshToken = '$base_url/api/v1/auth/refresh-token';
  static const allCourses = '$base_url/api/v1/mobile/student/dashboard/courses';
  static const latestAssignment =
      '$base_url/api/v1/mobile/student/dashboard/latest-assignment';
}
