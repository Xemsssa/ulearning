import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning/app_event.dart';
import 'package:ulearning/pages/all_courses/all_courses.dart';
import 'package:ulearning/pages/courses_detail/courses_details.dart';
import 'package:ulearning/pages/home/home_screen.dart';
import 'package:ulearning/pages/log_in/Log_in.dart';
import 'package:ulearning/pages/main/main_screen.dart';
import 'package:ulearning/pages/my_courses/my_courses.dart';
import 'package:ulearning/pages/profile/profile_screen.dart';
import 'package:ulearning/pages/search_screen/search_screen.dart';
import 'package:ulearning/pages/welcome/welcome.dart';
import 'package:ulearning/utils/AppRoutes.dart';

import 'app_blocs.dart';
import 'app_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // create: (context) => AppBlocs(),
      // create: (context) => AppBlocs(),
          debugShowCheckedModeBanner: false,
          // home: MyHomePage(title: 'Flutter demo page'),
          // home: Welcome(),
          // home: SignIn(),
          // home: MainScreen(),
          home:HomeScreen(),
            routes: {
              // '/': (context) => const BottomBar(),
              AppRoutes.homeScreen:(BuildContext context) => const HomeScreen(),
              AppRoutes.profileScreen: (context) => const ProfileScreen(),
              AppRoutes.logIn: (context) => const LogIn(),
              AppRoutes.coursesDetail: (context) => const CoursesDetail(),
              AppRoutes.myCourses: (context) => const MyCourses(),
              '/all_courses': (context) => const AllCourses(),
              AppRoutes.searchScreen: (context) =>const SearchScreen()
          }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: BlocBuilder<AppBlocs, AppState>(
          builder: (context, state) {
            return  Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                   'You have pushed the button this many times:',
                ),
                Text(
                  // '$_counter',
                  "${BlocProvider.of<AppBlocs>(context).state.counter}",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            );
            }
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() => BlocProvider.of<AppBlocs>(context).add(Increment()),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}