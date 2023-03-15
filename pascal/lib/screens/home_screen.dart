import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 List<String> images=[
  "lib/assets/logo.png",
  "lib/assets/pinguini.jpg",
  "lib/assets/hippo.png"
 ];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) { 
   return SingleChildScrollView(child: Column(
    children: [
    CarouselSlider.builder(
      itemCount: images.length, 
      itemBuilder:(context, index, realIndex) {
        return Container(
      child: Image.asset(images[index], fit:BoxFit.cover)
        );
      },
 options: CarouselOptions(
  height: 400.0,
  autoPlay: true,
  autoPlayInterval: Duration(milliseconds: 100),
  ),
  ),
    ]),  
   );

   }
}



