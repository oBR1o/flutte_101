import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment =
    Alignment.topLeft; // use const because position can be locked
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.colors1,
    this.colors2, {
    super.key,
  });

  const GradientContainer.indigo({super.key})
      : colors1 = const Color.fromARGB(255, 17, 7, 61),
        colors2 = const Color.fromARGB(255, 57, 24, 203);

  final Color colors1;
  final Color colors2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colors1,
            colors2,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
