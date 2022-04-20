import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:web/core/extension/context_extension.dart';

import '../../constants/Data.dart';
import 'identificationCard.dart';

CarouselSlider buildCarouselSlider(BuildContext context) {
  return CarouselSlider(
      options: CarouselOptions(
          height: context.dynmheight(1),
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          enableInfiniteScroll: false,
          autoPlay: true),
      items: [
        for (int i = 0;
            i < Data.instance.identificationCardHeadline.length;
            i++)
          identificationCard(
              Gelendeg: i,
              still: Data.instance.ImagesStill[i],
              stillIcon: Data.instance.Iconstill[i],
              identification1: Data.instance.identificationCardHeadline[i],
              identification2: Data.instance.subtitle[i],
              identification3: Data.instance.identificationCardHeadline2[i],
              identification4: Data.instance.subtitle2[i])
      ]);
}
