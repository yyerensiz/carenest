// import 'package:carenest/screens/main_screen.dart';
// import 'package:carenest/screens/signup_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

// //screens
// import 'screens/login_screen.dart';
// import 'screens/home_screen.dart';
// import 'screens/specialist_details.dart';

// //

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Helper App',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => LoginScreen(),
//         '/signup': (context) => SignupScreen(),
//         '/main': (context) => MainScreen(),
//       },
//     );
//   }
// }


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/main_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/map_screen.dart';
import 'screens/specialist_finder_screen.dart';
import 'screens/specialist_profile_screen.dart';
import 'screens/review_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
print('Firebase initialized successfully!');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Helper App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      // Define the routes for the application
      routes: {
        '/': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/main': (context) => MainScreen(),
        '/chat': (context) => ChatScreen(),
        '/map': (context) => MapScreen(),
        '/specialist_finder': (context) => SpecialistFinderScreen(),
        '/review': (context) => ReviewScreen(),
      },
      // Use onGenerateRoute for screens requiring arguments
      onGenerateRoute: (settings) {
  if (settings.name == '/specialist_profile') {
    final args = settings.arguments as Map<String, dynamic>;

    return MaterialPageRoute(
      builder: (context) {
        return SpecialistProfileScreen(
          name: args['name'],
          category: args['category'],
          rating: args['rating'],
        );
      },
    );
  }
  return null; // If route not found
},

    );
  }
}

