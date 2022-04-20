import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/core/constants/color_constants.dart';
import 'package:web/core/constants/padding_constants.dart';
import 'package:web/core/extension/context_extension.dart';



class GostergeCard extends StatelessWidget {
  final String Deg1,Deg2;
  const GostergeCard({Key? key, required this.Deg1, required this.Deg2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return profCard(context);
  }

  Padding profCard(BuildContext context) {
    return Padding(
        padding: PaddingConstants.instance.HardLowPad,
        child: ProfCards(context));
  }

  Row ProfCards(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            shapeAvatar(context),
            SizedBox(width: context.dynwidth(0.03),),
            bodyTexts(context)]);
  }

  Wrap bodyTexts(BuildContext context) {
    return Wrap(
     direction: Axis.vertical,
     spacing: context.dynmheight(0.01),
       children: [buildTextBody1(context), buildTextBody2(context)]);
  }

  CircleAvatar shapeAvatar(BuildContext context) {
    return CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage("assets/home/general_items/prof.png"));
  }

  Text buildTextBody1(BuildContext context) {
    return Text(Deg1,style: Theme.of(context).textTheme.headline5?.copyWith(color:ColorConstants.instance.White,fontWeight:FontWeight.w600),);
  }

  Text buildTextBody2(BuildContext context) {
    return Text(Deg2,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color:ColorConstants.instance.White,fontWeight:FontWeight.w400),);
  }

}




