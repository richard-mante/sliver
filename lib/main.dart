import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class CarItem{
  final String title;
  final String subtitle;
  final String url;
  
  CarItem({required this.title,required this.subtitle, required this.url});
}

class ListOfCars{
  final List<CarItem> carList =[
    CarItem(title: '911 Cabriolet', subtitle: '911 Carrera Cabriolet Porsche', url: 'url'),
  CarItem(
  title: 'Cayenne',
  subtitle: 'Cayenne S Porsche',
  url:
  'https://oreil.ly/gwvnL'),
  CarItem(
  title: '911 Cabriolet',
  subtitle: '911 Carrera Cabriolet Porsche',
  url:
  'https://oreil.ly/m3OXC'),
  CarItem(
  title: '718 Spyder',
  subtitle: '718 Spyder Porsche',
  url:
  'https://oreil.ly/hca-6'),
  CarItem(
  title: '718 Boxster T',
  subtitle: '718 Boxster T Porsche',
  url:
  'https://oreil.ly/Ws4EX'),
  CarItem(
  title: 'Cayenne',
  subtitle: 'Cayenne S Porsche',
  url:
  'https://oreil.ly/gwvnL'),
  CarItem(
  title: '911 Cabriolet',
  subtitle: '911 Carrera Cabriolet Porsche',
  url:
  'https://oreil.ly/m3OXC'),
  CarItem(
  title: '718 Spyder',
  subtitle: '718 Spyder Porsche',
  url:
  'https://oreil.ly/hca-6'),
  CarItem(
  title: '718 Boxster T',
  subtitle: '718 Boxster T Porsche',
  url:
  'https://oreil.ly/Ws4EX'),
  CarItem(
  title: 'Cayenne',
  subtitle: 'Cayenne S Porsche',
  url:
  'https://oreil.ly/gwvnL')
  ];
}
class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home:  Scaffold(
        body: CustomScrollView(
          slivers:  [
            const SliverAppBar(
              leading:  Icon(Icons.menu),
              title: Text('this is Text',style: TextStyle(fontFamily: 'Poppins'),),
              expandedHeight: 300,
              collapsedHeight: 150,
              floating: false,
              backgroundColor: Colors.greenAccent,
            ),
            MySliverList(),
          ],
        ),
      ),
    );
  }
}

class MySliverList extends StatelessWidget {
   MySliverList({super.key});
   final ListOfCars cars = ListOfCars();

   @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context, index)=>ListTile(
      title: Text(cars.carList[index].title,style: TextStyle(fontFamily: 'Poppins'),),
      subtitle: Text(cars.carList[index].subtitle,style: TextStyle(fontFamily: 'Poppins'),),
    ),
      childCount: cars.carList.length
    ),
    );
  }
}
