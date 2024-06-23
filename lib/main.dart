import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Ninja ID Card',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/tiger1.jpg'),
                radius: 40.0,
              ),
            ),
            const Divider(
              height: 90.0,
              color: Colors.grey,
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'John Thomas',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'johnthomas@gmail.com',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.0,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
