import 'package:flutter/material.dart';
import '../../../../core/app_text_styles.dart';
import '../../../../core/app_colors.dart';

class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Vamos começar", style: AppTextStyles.heading),
                    Text("Complete os desafios e avance no conhecimento", style: AppTextStyles.body),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}