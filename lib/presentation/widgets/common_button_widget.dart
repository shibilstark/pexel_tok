import 'package:flutter/material.dart';
import 'package:pexel_tok/config/style/colors.dart';

class CommonButtonWidget extends StatelessWidget {
  const CommonButtonWidget({
    super.key,
    required this.child,
    required this.ontap,
    this.backgroundColor,
  });
  final Widget child;
  final void Function() ontap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ontap,
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: backgroundColor == null
                ? const MaterialStatePropertyAll(AppColors.theme)
                : MaterialStatePropertyAll(backgroundColor)),
        child: child);
  }
}
