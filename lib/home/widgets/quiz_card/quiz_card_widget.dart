import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(height: 16),
          Text("Gerenciamento de estado", style: AppTextStyles.heading15),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "3/10",
                    style: AppTextStyles.body11,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: LinearProgressIndicator(
                      value: 0.3,
                      backgroundColor: AppColors.chartSecondary,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.chartPrimary)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
