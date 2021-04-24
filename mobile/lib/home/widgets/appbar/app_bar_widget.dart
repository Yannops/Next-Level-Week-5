import 'package:DevQuiz/home/widgets/appbar/score_card/score_card_widget.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';
import '../../../core/app_text_styles.dart';
import '../../../core/core.dart';
import '../../../core/app_gradients.dart';

 class AppBarWidget extends PreferredSize {
   final UserModel user;
   AppBarWidget({required this.user}) : super(
     preferredSize: Size.fromHeight(250), 
     child: Container(
       height: 250,
        padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Stack(
           children: [
             Container(
               height: 161,
               width: double.maxFinite,
               decoration: BoxDecoration(gradient: AppGradients.linear),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text.rich(TextSpan(
                     text: "Olá, ", style: AppTextStyles.title,
                     children: [
                       TextSpan(
                         text: user.name,
                         style: AppTextStyles.titleBold,
                       )
                     ]
                   )),
                   Container(
                     height: 58,
                     width: 58,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(
                         image: NetworkImage(user.photoUrl)
                       )
                     ),
                   )
                 ],
               ),
             ),
             Align(
               alignment: Alignment(0.0, 1.0),
               child: ScoreCardWidget(),
             )
           ],
         ),
     )
   );
 }