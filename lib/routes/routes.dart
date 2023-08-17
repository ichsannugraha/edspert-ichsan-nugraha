import 'package:edspert_ichsan_nugraha/presentation/screen/biodata/page/biodata_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/diskusi/page/diskusi_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/home/page/home_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/login/page/login_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/profile/page/profile_page.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/navbar/page/navbar.dart';
import 'package:edspert_ichsan_nugraha/presentation/screen/splash/page/splash_screen.dart';
import 'package:get/get.dart';

class AppPage{
  static List<GetPage> routes = [
    GetPage(name: navbar, page: ()=> const NavBar()),
    GetPage(name: splash, page: ()=> const SplashScreen()),
    GetPage(name: login, page: ()=> const LoginPage()),
    GetPage(name: biodata, page: ()=> BiodataPage()),
    GetPage(name: home, page: ()=> HomePage()),
    GetPage(name: diskusi, page: ()=> const DiskusiPage()),
    GetPage(name: profile, page: ()=> const ProfilePage()),
  ];

  static getNavbar() => navbar;
  static getSplash() => splash;
  static getLogin() => login;
  static getBiodata() => biodata;
  static getHome() => home;
  static getDiskusi() => diskusi;
  static getProfile() => profile;
  //
  static String navbar = '/';
  static String splash = '/splash';
  static String login = '/login';
  static String biodata = '/biodata';
  static String home = '/home';
  static String diskusi = '/diskusi';
  static String profile = '/profile';
}