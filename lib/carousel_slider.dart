import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselPro extends StatelessWidget {
  const CarouselPro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Carousel(
      boxFit: BoxFit.cover,
      images: [
        Container(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.photo_size_select_actual,
                size: 56.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Photo Gallery',
                style: Theme.of(context).textTheme.headline.copyWith(
                      color: Colors.white,
                    ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Get access to all the photos at our various meet up sessions',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.tv,
                size: 56.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Live TV',
                style: Theme.of(context).textTheme.headline.copyWith(
                      color: Colors.white,
                    ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Enjoy live coverage of our meet ups whereever you happended to find yourself',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.wifi_tethering,
                size: 56,
                color: Colors.white,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Interactive',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline.copyWith(
                      color: Colors.white,
                    ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Stay interactive by contributing and asking questions during a session',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
      ],
      animationCurve: Curves.fastOutSlowIn,
      // animationDuration: Duration(milliseconds: 2000),
      autoplay: false,
      dotBgColor: Colors.transparent,
      dotSize: 6.0,
    );
  }
}
