import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypharmacy_app/core/utils/app_router.dart';
import 'package:mypharmacy_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales:const [
          Locale(
            'en',
          ),
          Locale(
            'ar',
          )
        ],
        path: 'assets/language', // <-- change the path of the translation files
        fallbackLocale: const Locale(
          'ar',
        ),
        child: const MyPharmacy()),
  );
}

class MyPharmacy extends StatelessWidget {
  const MyPharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        theme: ThemeData(textTheme: GoogleFonts.cairoTextTheme()),
        debugShowCheckedModeBanner: false,

        // localizationsDelegates: const [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        // supportedLocales: const [
        //   Locale('ar', 'AE'), // English, no country code
        // ],
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routerConfig: AppRouter.router);
  }
}
