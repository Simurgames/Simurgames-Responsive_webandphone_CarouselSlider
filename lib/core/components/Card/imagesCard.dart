import 'package:flutter/material.dart';
import 'package:web/core/extension/context_extension.dart';

import '../../constants/color_constants.dart';
import '../../constants/padding_constants.dart';

class imagesCard extends StatelessWidget {
  final String Still;
  final IconData imagesIcon;

  const imagesCard({Key? key, required this.Still, required this.imagesIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/home/general_items/0.png"),
        Container(
          padding: PaddingConstants.instance.BigPad,
          decoration: BoxDecoration(
            color: ColorConstants.instance.BayofMany,
          ),
        ),
        Padding(
          padding: PaddingConstants.instance.VeryLowPad,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Icon(imagesIcon,color: ColorConstants.instance.White,)),
              SizedBox(
                height: context.dynmheight(0.07),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  Still ,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ColorConstants.instance.White, fontWeight: FontWeight.w600),
                ),
              ),



            ],
          ),
        ),
      ],
    );
  }
}