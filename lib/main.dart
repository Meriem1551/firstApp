import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 197, 213),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 197, 213),
        title: Row(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 50, 10),
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(232, 235, 234, 233),
                radius: 20,
                child: Icon(Icons.person,
                    color: Color.fromARGB(255, 228, 51, 110)),
              ),
            ),
            const SizedBox(width: 8),
            const Text('Meriem Boussaid'),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 300.0,
              width: 300.0,
              margin: const EdgeInsets.only(top: 170),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.donmai.us/original/cd/6f/cd6fca1acbc66285a689543710d51092.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(height: 48),
          const SizedBox(
              width: 320,
              child: Text(
                '"When you give joy to other people, you get more joy in return"',
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 25),
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
