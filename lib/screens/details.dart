import 'package:flutter/material.dart';

import '../plant.dart';

class DetailPage extends StatelessWidget {
  final Plant plant;

  const DetailPage({Key? key, required this.plant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.arrow_back)),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                    ],
                  ),
                  Container(
                    child: Hero(
                      tag: plant.title,
                      child: Image.asset(plant.image),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          plant.title,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          plant.discription,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "\$${plant.price}",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                                onPressed: () {},
                                child:
                                    Text("+", style: TextStyle(fontSize: 22)))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildCard("Height", Icons.height, plant.height),
                  buildCard("Temperature", Icons.thermostat_outlined,
                      plant.temprature),
                  buildCard("Port", Icons.portrait, plant.port),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildCard(String title, IconData icon, String data) {
  return Column(
    children: [
      Icon(icon, color: Colors.white, size: 40),
      SizedBox(height: 10),
      Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      SizedBox(height: 1),
      Text(
        data,
        style: TextStyle(color: Colors.white),
      )
    ],
  );
}
