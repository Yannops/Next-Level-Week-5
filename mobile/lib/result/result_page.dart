

import 'package:DevQuiz/challenge/widget/next_button/next_button_widget.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         width: double.maxFinite,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Image.asset(AppImages.trophy),
             Text("Parabéns!", style: AppTextStyles.heading40,),
             SizedBox(
               height: 12,
             ),       
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 60),
               child: Text.rich(TextSpan(
                 text: "Você concluiu",
                 style: AppTextStyles.body,
                 children: [
                   TextSpan(text: "Gerenciamento de estado", style: AppTextStyles.bodyBold),
                   TextSpan(text: "com 6 de 10 acertos", style: AppTextStyles.body)
                ],
               ),
               textAlign: TextAlign.center,
              ),
             ),
             NextButtonWidget.purple(label: "Compartilhar", onTap: (){
              Share.share("Quiz NLW#5 - Flutter - redultado do quiz 10/10");
             }),
             SizedBox(
               height: 24,
             ),
             NextButtonWidget.purple(label: "Voltar", onTap: (){
               Navigator.pop(context);
             }),
           ],
         ),
       ),
    );
  }
}