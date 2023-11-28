import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoint=0;

  int teamBPoint=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('PointsCounter'),
        ),
        body: Column(
          children: [
            SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 42),
                    ),
                    Text(
                      '$teamAPoint',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamAPoint++;
                        });
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamAPoint+=2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamAPoint+=3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 42),
                    ),
                    Text(
                      '$teamBPoint',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPoint++;
                        });
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPoint+=2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange, minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          teamBPoint+=3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, minimumSize: Size(150, 50)),
              onPressed: () {
                setState(() {
                  teamAPoint=0;
                  teamBPoint=0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
