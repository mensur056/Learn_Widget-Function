import 'package:flutter/material.dart';

import 'internet_connection/interner_main.dart';

void main() {
  // await Firebase.initializeApp();
  runApp(const InternetMain());
}

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   final TaskManagerViewModel viewmodel = TaskManagerViewModel();
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider<IFirebaseService>(
//           create: (_) => FirebaseGeneralService(),
//         )
//       ],
//       child: AuthWidgetBuilder(
//         onPageBuilder: (context, AsyncSnapshot<FirebaseUserModel?> snapshot) {
//           return const MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Flutter Demo',
//             home: ToDoHomePage(),
//           );
//         },
//       ),
//     );
//   }
// }
