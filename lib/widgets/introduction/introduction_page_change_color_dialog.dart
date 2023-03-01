import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../utils/custom_colors.dart';
import '../../utils/custom_styles.dart';

class IntroductionPageChangeColorDialog extends StatelessWidget {

  final Function(Color) changeColor;

  const IntroductionPageChangeColorDialog({
    super.key,
    required this.changeColor,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
      ),
      title: Center(
        child: Text(
          "Pick a color!",
          style: CustomStyles.introductionPageChangeColorDialogTitle(),
        ),
      ),
      content: SingleChildScrollView(
        child: BlockPicker(
          pickerColor: CustomColors.kPrimaryColor,
          onColorChanged: changeColor,
          availableColors: CustomColors.primaryPalette,
          layoutBuilder: (BuildContext context, List<Color> colors, PickerItem child) {
            return SizedBox(
              width: 300,
              height: 200,
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: [
                  for (Color color in colors)
                    child(color)
                ],
              ),
            );
          },
        ),
      ),
      actions: [
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(CustomColors.kPrimaryColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            child: Text(
              'Confirm',
              style: CustomStyles.introductionPageChangeColorDialogConfirmButton(),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }

}
