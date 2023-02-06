import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderCarousel extends StatefulWidget {
  const SliderCarousel({Key? key}) : super(key: key);

  @override
  State<SliderCarousel> createState() => _SliderCarouselState();
}

final List<String> images = [
  'https://www.globalblue.com/business/images/article926851.ece/BINARY/TFS_Article_2019_970x643.jpg',
  'https://www.globalblue.com/business/images/article926851.ece/BINARY/TFS_Article_2019_970x643.jpg',
  'https://www.globalblue.com/business/images/article926851.ece/BINARY/TFS_Article_2019_970x643.jpg',
  'https://www.globalblue.com/business/images/article926851.ece/BINARY/TFS_Article_2019_970x643.jpg',
];

class _SliderCarouselState extends State<SliderCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
      ),
      itemBuilder: (context, index, realIdx) {
        String slides = "${images[index]}";
        return Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: DecorationImage(
                    image: NetworkImage(
                      images[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  border: Border.all(
                    color: Colors.yellow,
                    width: 4.0,
                  ),
                ),
              ),
              // SizedBox(width: 10),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: DecorationImage(
                    image: NetworkImage(
                      images[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  border: Border.all(
                    color: Colors.yellow,
                    width: 4.0,
                  ),
                ),
              ),
              // SizedBox(width: 10),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: DecorationImage(
                    image: NetworkImage(
                      images[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  border: Border.all(
                    color: Colors.yellow,
                    width: 4.0,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
