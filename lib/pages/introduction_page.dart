import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../utils/custom_colors.dart';
import '../utils/custom_styles.dart';
import '../widgets/introduction/introduction_page_change_color_dialog.dart';
import '../widgets/introduction/introduction_page_text_form_field.dart';

class IntroductionPage extends StatefulWidget {

  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Color? _selectedColor;

  void _changeColor(Color color) {
    setState(() => _selectedColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.kWhiteBackgroundColor,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [

                Image.asset(
                  "assets/img/introduction_cat.png",
                ),

                const SizedBox(
                  height: 34,
                ),

                Text(
                  "It looks like\nyou're new here",
                  textAlign: TextAlign.center,
                  style: CustomStyles.introductionPageTitle(),
                ),

                const SizedBox(
                  height: 17,
                ),

                Text(
                  "Start creating a new space",
                  textAlign: TextAlign.center,
                  style: CustomStyles.introductionPageSubtitle(),
                ),

                Form(
                  key: _formKey,
                  child: Column(
                    children: [

                      const SizedBox(
                        height: 34,
                      ),

                      IntroductionPageTextFormField(
                        hintText: "Name",
                        verificationCallback: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "It cannot be null";
                          }
                          return null;
                        },
                      ),

                      const SizedBox(
                        height: 17,
                      ),

                      IntroductionPageTextFormField(
                        hintText: "Initial balance (€)",
                        verificationCallback: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "It cannot be null";
                          }
                          if (double.tryParse(value) == null) {
                            return "It must be a number";
                          }
                          return null;
                        },
                      ),

                      const SizedBox(
                        height: 17,
                      ),

                    ],
                  ),

                ),

                const SizedBox(
                  height: 34,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTapUp: (_) {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: Container(
                        height: 55,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: CustomColors.kPrimaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Start",
                            style: CustomStyles.introductionPageStartButton(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTapUp: (_) {
                        showDialog(
                          context: context,
                          builder: (_) => IntroductionPageChangeColorDialog(
                            changeColor: _changeColor,
                          ),
                        );
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: CustomColors.kFormBackgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Icon(
                            MdiIcons.paletteOutline,
                            color: CustomColors.kFormTextColor,
                          ),
                        ),
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
