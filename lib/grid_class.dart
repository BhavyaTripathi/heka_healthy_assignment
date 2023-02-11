import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class GridClass extends StatelessWidget {
  GridClass({Key? key}) : super(key: key);

  final List<String> data = [
    'SAFETY TRAINING',
    'ELDERLY CARE',
    'PREGNANCY CARE',
    'OPERATIVE CARE',
    'DOCTOR CONSULTATION',
    'LAB TEST',
    'PHARMACY',
    'MEDICAL ASTROLOGY',
    'OVERSEAS SERVICE',
    'GENERAL WELLNESS'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: LayoutGrid(columnGap: 12, rowGap: 12, areas: '''
          a b
          c d
          e f 
          g h 
          i j
        ''', columnSizes: [
          1.0.fr,
          1.0.fr
        ], rowSizes: [
          1.0.fr,
          1.0.fr,
          1.0.fr,
          1.0.fr,
          1.0.fr
        ], children: [
          gridArea('a').containing(
              gridItemWidget(0, 'assets/safety_training.png', context)),
          gridArea('b').containing(
              gridItemWidget(1, 'assets/elderly_care.png', context)),
          gridArea('c').containing(
              gridItemWidget(2, 'assets/pregnancy_care.png', context)),
          gridArea('d').containing(
              gridItemWidget(3, 'assets/operative_care.png', context)),
          gridArea('e').containing(
              gridItemWidget(4, 'assets/doctor_consultation.png', context)),
          gridArea('f')
              .containing(gridItemWidget(5, 'assets/lab_test.png', context)),
          gridArea('g')
              .containing(gridItemWidget(6, 'assets/pharmacy.png', context)),
          gridArea('h').containing(
              gridItemWidget(7, 'assets/medical_astrology.png', context)),
          gridArea('i').containing(
              gridItemWidget(8, 'assets/overseas_service.png', context)),
          gridArea('j').containing(
              gridItemWidget(9, 'assets/general_wellness.png', context)),
        ]));
  }

  Widget gridItemWidget(int index, String image, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: const Color(0xFFAABBAA)),
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: Image.asset(image))),
        const SizedBox(height: 6),
        Text(data[index],
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w700))
      ],
    );
  }
}
