import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//WorkerdetailsScreen

class WorkerdetailsScreen extends StatefulWidget {
  WorkerdetailsScreen({Key? key}) : super(key: key);

  @override
  _WorkerdetailsScreenState createState() => _WorkerdetailsScreenState();
}

class _WorkerdetailsScreenState extends State<WorkerdetailsScreen> {
  List<String> items = ['Carpenter', 'Plumber', 'Electrician'];
  String dropdownValue = 'Carpenter';

  List<String> items1 = ['0-1 Year', '2-3 Years', '4+ Years'];
  String dropdownValue1 = '0-1 Year';

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
                  SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      'WORKER',
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
                  SizedBox(height: 30),
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
                  SizedBox(height: 20),
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
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      'Profession',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(229, 224, 255, 1),
                        borderRadius: BorderRadius.circular(70),
                      ),
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          value: dropdownValue,
                          items: items.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      'Experience',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(229, 224, 255, 1),
                        borderRadius: BorderRadius.circular(70),
                      ),
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue1 = newValue!;
                            });
                          },
                          value: dropdownValue1,
                          items: items1.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  ),

                  //end
                  SizedBox(height: 100),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
