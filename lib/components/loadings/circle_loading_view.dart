import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../constants/themes/app_colors.dart';

class CircleLoadingView extends StatelessWidget {
  const CircleLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularLoading(),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 50,
        height: 40,
        child: LoadingIndicator(
          indicatorType: Indicator.lineScale,
          colors: [AppColors.primary],
          strokeWidth: 1,
        ),
      ),
    );
  }
}

class CircularLoading extends StatelessWidget {
  const CircularLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator.adaptive(
      backgroundColor: AppColors.primary.withOpacity(0.2),
      valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
    );
  }
}
