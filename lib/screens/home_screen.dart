import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:workflow_flutter/screens/jobdesc_screen.dart';
import 'package:workflow_flutter/screens/jobfind_screen.dart';
import 'package:workflow_flutter/screens/select_screen.dart';
import 'package:workflow_flutter/screens/userdetails_screen.dart';
import 'package:workflow_flutter/screens/workerdetails_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => WorkerdetailsScreen(),
              )),
              child: const Text('WorkderDetailScreen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => JobDescriptionScreen(),
              )),
              child: const Text('Job Description Screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => JobfindScreen(),
              )),
              child: const Text('Job Find Screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SelectScreen(),
              )),
              child: const Text('Select Screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserdetailsScreen(),
              )),
              child: const Text('User Detail Screen'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => WorkerdetailsScreen(),
              )),
              child: const Text('Worker Detail Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
