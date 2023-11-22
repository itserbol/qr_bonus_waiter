import 'package:flutter/material.dart';
import 'package:qr_bonus_waiter/profile-screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Главная',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.person, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView( 
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 0.0,
                  ),
                ],
              ),


              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  hintText: 'Выберите филиал',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                  fillColor: Color.fromARGB(255, 59, 59, 59),
                  filled: true,
                  prefixIcon: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white, size: 35),
                ),
                style: const TextStyle(fontSize: 16.0, color: Colors.white),
                dropdownColor: const Color.fromARGB(255, 59, 59, 59),
                items: ['Барашек', 'FRUNZE', 'ZERNO']
                    .map((branch) => DropdownMenuItem<String>(
                          value: branch,
                          child: Text(branch),
                        ))
                    .toList(),
                onChanged: (value) {
                  // Handle selected branch
                  print('Selected branch: $value');
                },
                isExpanded: true,
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 59, 59, 59),
                        ),
                        child: const Center(
                          child: Icon(Icons.qr_code_scanner, size: 50, color: Colors.white),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text('Начислить', style: TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 59, 59, 59),
                        ),
                        child: const Icon(Icons.qr_code_sharp, size: 50, color: Colors.white),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text('Снять', style: TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
