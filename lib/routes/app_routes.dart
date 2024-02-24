part of 'app_page.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
    static const CREATE_RESUME = _Paths.CREATE_RESUME;
    static const DISPLAY_RESUME = _Paths.DISPLAY_RESUME;

}

abstract class _Paths {
  _Paths._();

  static const HOME = '/home';
  static const CREATE_RESUME = '/create-resume';

    static const DISPLAY_RESUME = '/display-resume';

}
