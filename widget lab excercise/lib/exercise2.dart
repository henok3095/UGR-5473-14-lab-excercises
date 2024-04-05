import 'package:flutter/material.dart';

class WidgetExercise2 extends StatelessWidget {
  const WidgetExercise2({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.arrow_back),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              color: Color.fromARGB(255, 240, 240, 240),
              child: const Row(
                  children: [Icon(Icons.search), Text('Search Product')]),
            ),
            const Row(
              children: [
                Icon(Icons.shopping_cart),
                Icon(Icons.notification_add)
              ],
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$8.6',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Icon(Icons.favorite, color: Colors.grey)
            ],
          ),
          const Text(
              'BARDI Smart Light bulb Lamp Bohlam LED Wifi RGBWW 12W 12 watt Home IOT',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 15,),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Color.fromARGB(255, 230, 216, 97)),
                    Text('5.0', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('(354)', style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Text('540 Sale', style: TextStyle(color: Colors.grey)),
              ),
              Row(
                children: [
                  Icon(Icons.location_city, color: Colors.grey),
                  Text('Brooklyn', style: TextStyle(color: Colors.grey))
                ],
              )
            ],
          ),
          const SizedBox(height: 35,),
          const Text('Variant',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(height: 15,),
          const Row(
            children: [
              Text('Size:'),
              Text('XS', style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
           const SizedBox(height: 15,),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20),
                child: const Text(
                  'XS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20),
                child: const Text(
                  'XS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20),
                child: const Text(
                  'XS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20),
                child: const Text(
                  'XS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20),
                child: const Text(
                  'XS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'XS',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          const SizedBox(height: 15,),
          const Row(
            children: [
              Text('Color:'),
              Text('RED', style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
           const SizedBox(height: 15,),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20),
                child: const Text(
                  'RED',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20),
                child: const Text(
                  'BLACK',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20),
                child: const Text(
                  'GREEN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20),
                child: const Text(
                  'WHITE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20),
                child: const Text(
                  'BLUE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 13),
              child: Icon(Icons.comment),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue, // Set border color here
                  width: 2, // Set border width here
                    ),
                ),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: const Center(child: const Text('Add to Shopping Cart')),
            )
          ],
        ),
      ),
    );
  }
}