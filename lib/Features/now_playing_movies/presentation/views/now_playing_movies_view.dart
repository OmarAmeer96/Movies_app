import 'package:flutter/material.dart';
import 'package:movies_app/Core/widgets/custom_main_text_form_field.dart';
import 'package:movies_app/constants.dart';

class NowPlayingMoviesView extends StatelessWidget {
  const NowPlayingMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                'Login',
                style: TextStyle(
                  color: Color(0xFFF3F3F3),
                  fontFamily: kInterBold,
                  fontSize: 24,
                ),
              ),
              CustomMainTextField(
                hintText: "Enter New IP",
                borderColor: Colors.red,
                focusedBorderColor: Colors.red,
                enabledBorderColor: Colors.white,
                inputType: TextInputType.text,
                obscureText: false,
                // controller: _inputIpController,
                // onChanged: (data) {
                //   inputIp = data;
                // },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value.';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
