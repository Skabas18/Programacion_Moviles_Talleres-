import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pasticceria_app/src/data/data_receta.dart';
import 'package:pasticceria_app/src/models/models_images.dart';

class CarouselSebastian extends StatefulWidget {
  const CarouselSebastian({super.key});

  @override
  State<CarouselSebastian> createState() => _CarouselSebastianState();
}

class _CarouselSebastianState extends State<CarouselSebastian> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        CarouselSlider.builder(
          itemCount: carruselImages.length,
          itemBuilder: (context, index, realIndex) {
            // ignore: unused_local_variable
            final carruselImage = carruselImages[index];
            return CardImages(
              carruselImages: carruselImages[index],
            );
          },
          options: CarouselOptions(
            height: 200.0,
            autoPlay: true,
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 5),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}

class CardImages extends StatelessWidget {
  final Receta carruselImages;
  const CardImages({Key? key, required this.carruselImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          splashColor: Colors.red,
          onTap: () {
            carruselImages.copy();
          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/images/S1.jpg"),
            image: AssetImage(carruselImages.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
