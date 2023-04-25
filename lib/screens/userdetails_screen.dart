import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//WorkerdetailsScreen

class UserdetailsScreen extends StatefulWidget {
  UserdetailsScreen({Key? key}) : super(key: key);

  @override
  _UserdetailsScreenState createState() => _UserdetailsScreenState();
}

class _UserdetailsScreenState extends State<UserdetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 242, 242, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ClipRRect(
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                child: Image.asset(
                  'assets/images/Shape1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 35),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      bottomLeft: Radius.circular(70)),
                  color: Color.fromRGBO(142, 167, 233, 1)),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      'USER',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      'DETAILS',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 80),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      'Location',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField()),
                  ),
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField()),
                  ),

                  //end
                  SizedBox(height: 108),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
