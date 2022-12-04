import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pesan_makan/account_view.dart';
import 'package:pesan_makan/cubit/auth_cubit.dart';
import 'package:pesan_makan/home_view.dart';
import 'package:pesan_makan/loginPage/sign_up_page.dart';
import 'package:pesan_makan/spalsh_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pesan_makan/list_coba/test_page.dart';
import 'loginPage/sign_in_page.dart';
import 'package:pesan_makan/pre_pesan.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Future<FirebaseApp> firebaseApp = Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/signIn-page': (context) => SignInPage(),
          '/signUp-page': (context) => SignUpPage(),
          '/main': (context) => MyHomePage(),
          '/account': (context) => AccountPage(),
          '/testing': (context) => TestPage(),
          '/preorder': (context) => PreOrder(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}
