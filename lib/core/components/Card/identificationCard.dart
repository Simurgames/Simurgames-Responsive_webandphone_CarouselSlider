import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web/core/constants/border_constants.dart';
import 'package:web/core/extension/context_extension.dart';

import '../../constants/color_constants.dart';
import '../../constants/gradient_constants.dart';
import '../../constants/padding_constants.dart';

class identificationCard extends StatelessWidget {
  final String identification1,
      identification2,
      identification3,
      identification4;
  final String still;
  final IconData stillIcon;
  final int Gelendeg;

  const identificationCard(
      {Key? key,
      required this.identification1,
      required this.identification2,
      required this.identification3,
      required this.identification4,
      required this.still,
      required this.stillIcon,
      required this.Gelendeg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: PaddingConstants.instance.LowPad,
        child: identificationCards(context));
  }

  Container identificationCards(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: ColorGradientConstants.instance.BlueGradient,
            borderRadius: BorderConstants.instance.VeryLowBorder,
            border: Border.all(color: ColorConstants.instance.DodgerBlue)),
        child: buildPadding(context));
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
        padding: PaddingConstants.instance.VeryLowPad,
        child: cardItems(context));
  }

  Column cardItems(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 42, child: imagesCard(context)),
          Expanded(flex: 80, child: identificationColumn(context))
        ]);
  }

  Stack imagesCard(BuildContext context) {
    return Stack(children: [
      for (int i = 0; i < 4; i++) Images(context),
      imagesDecoration(),
      imagesItems(context)
    ]);
  }

  Container Images(BuildContext context) {
    return Container(
        width: context.dynwidth(0.63),
        child: Image.asset("assets/home/general_items/$Gelendeg.png",
            fit: BoxFit.fill));
  }

  Container imagesDecoration() {
    return Container(
        decoration: BoxDecoration(
            color: ColorConstants.instance.BayofMany,
            borderRadius: BorderConstants.instance.VeryLowBorder));
  }

  Padding imagesItems(BuildContext context) {
    return Padding(
        padding: PaddingConstants.instance.HardLowPad,
        child: imagesItem(context));
  }

  Column imagesItem(BuildContext context) {
    return Column(children: [
      alignIcon(),
      SizedBox(height: context.dynmheight(0.070)),
      alignStill(context)
    ]);
  }

  Align alignIcon() {
    return Align(alignment: Alignment.topLeft, child: cardIcon());
  }

  Icon cardIcon() => Icon(stillIcon, color: ColorConstants.instance.White);

  Align alignStill(BuildContext context) {
    return Align(alignment: Alignment.bottomRight, child: textStill(context));
  }

  Text textStill(BuildContext context) {
    return Text(still,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: ColorConstants.instance.White, fontWeight: FontWeight.w600));
  }

  Column identificationColumn(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            identification1,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: ColorConstants.instance.White,
                fontWeight: FontWeight.w500),
          ),
          Text(
            identification2,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: ColorConstants.instance.White,
                fontWeight: FontWeight.w300),
          ),
          BottomTitle(context),
          bottomSubtitle(context)
        ]);
  }

  Align BottomTitle(BuildContext context) {
    return Align(alignment: Alignment.bottomRight, child: title(context));
  }

  Text title(BuildContext context) {
    return Text(identification3,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: ColorConstants.instance.White, fontWeight: FontWeight.w500));
  }

  Align bottomSubtitle(BuildContext context) {
    return Align(alignment: Alignment.bottomRight, child: subtitle(context));
  }

  Text subtitle(BuildContext context) {
    return Text(identification4,
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
            color: ColorConstants.instance.White, fontWeight: FontWeight.w300),
        textAlign: TextAlign.right);
  }
}
