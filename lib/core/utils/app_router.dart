import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/login_view.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/new_password_view.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/pin_code_view.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/register_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/categories_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/category_details_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/home_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/neare_pharmacy_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/offers_view.dart';
import 'package:mypharmacy_app/features/splash/presentation/view/splash_view.dart';

import '../../features/home/presentation/views/pharmacy_details_view.dart';
import '../../features/home/presentation/views/status_order_details_view.dart';
import '../../features/home/presentation/views/status_order_views.dart';
import '../../features/setting/presentation/views/personal_information_view.dart';
import '../../features/setting/presentation/views/save_address_view.dart';
import '../../features/shopping/presentation/views/payment_view.dart';

abstract class AppRouter {
  static const  loginView = '/loginview';
  static const registerView = '/registerview';
  static const forgetPasswardView = '/forgetpasswordview';
  static const pinCodeView = '/pincodeview';
  static const newPasswardView = '/newpasswordview';
  static const homeView = '/homeview';
  static const nearPharmacyView = '/nearpharmacyview';
  static const offersView = '/offersview';
  static const categoriesView = '/categoriesview';
  static const categoryDetailsView = '/categorydetailsview';
  static const statusOrderView = '/statusorderview';
  static const statusOrderDetailsView = '/statusorderdetailsview';
  static const pharmacyDetailsView = '/pharmacydetailsview';

  static const paymentView = '/paymentview';
  static const personalInformationView = '/personalinformationview';
  static const saveAdressView = '/saveadressview';

  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: loginView,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: registerView,
      builder: (context, state) => const RegesterView(),
    ),
    GoRoute(
      path: forgetPasswardView,
      builder: (context, state) => const ForgetPasswordView(),
    ),
    GoRoute(
      path: pinCodeView,
      builder: (context, state) => const PinCodeView(),
    ),
    GoRoute(
      path: newPasswardView,
      builder: (context, state) => const NewPasswordView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: nearPharmacyView,
      builder: (context, state) => const NearPharmacyView(),
    ),
    GoRoute(
      path: offersView,
      builder: (context, state) => const OffersView(),
    ),
    GoRoute(
      path: categoriesView,
      builder: (context, state) => const CategoriesView(),
    ),
    GoRoute(
      path: categoryDetailsView,
      builder: (context, state) => const CategoryDetailsView(),
    ),
    GoRoute(
      path: statusOrderView,
      builder: (context, state) => const StatusOrderView(),
    ),
    GoRoute(
      path: statusOrderDetailsView,
      builder: (context, state) => const StatusOrderDetailsView(),
    ),
    GoRoute(
      path: pharmacyDetailsView,
      builder: (context, state) => const PharmacyDetailsView(),
    ),
    GoRoute(
      path: paymentView,
      builder: (context, state) => const PaymentView(),
    ),
    GoRoute(
      path: personalInformationView,
      builder: (context, state) => const PersonalInformationView(),
    ),
    GoRoute(
      path: saveAdressView,
      builder: (context, state) => const SaveAdressView(),
 ),
  ]);
}
