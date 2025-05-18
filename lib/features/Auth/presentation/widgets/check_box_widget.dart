import 'package:auth_flow/core/utils/app_color.dart';
import 'package:auth_flow/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

bool? value = false;

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      side: BorderSide(color: AppColor.lightGrey),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
      value: value,
      onChanged: (newValue) {
        setState(() {
          value = newValue;
          BlocProvider.of<AuthCubit>(
            context,
          ).updateTermsAndServiceCheckBox(newValue: newValue);
        });
      },
      activeColor: AppColor.blue,
    );
  }
}
