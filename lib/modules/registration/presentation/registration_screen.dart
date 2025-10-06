import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/common/presentation/widget/input_widget.dart';
import 'package:tech_messenger/core/common/presentation/widget/primary_button.dart';
import 'package:tech_messenger/core/common/presentation/widget/text_button_widget.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/core/util/validators.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late final TextEditingController nicknameController;
  late final TextEditingController passwordController;
  late final TextEditingController passwordRepeatController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    nicknameController = TextEditingController();
    passwordController = TextEditingController();
    passwordRepeatController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nicknameController.dispose();
    passwordController.dispose();
    passwordRepeatController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: p32, horizontal: p32),
          child: Center(
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.l10n.registration,
                      style: context.appTextTheme.large,
                    ),
                    SizedBox(height: p32),
                    InputWidget(
                      controller: nicknameController,
                      hintText: context.l10n.yourNickname,
                      validator: (value) =>
                          AppValidators.correctNicknameValidator(
                            value,
                            context,
                          ),
                    ),
                    SizedBox(height: p16),
                    InputWidget(
                      controller: passwordController,
                      obscureText: true,
                      hintText: context.l10n.yourPassword,
                      validator: (value) =>
                          AppValidators.correctPasswordValidator(
                            value,
                            context,
                          ),
                    ),
                    SizedBox(height: p16),
                    InputWidget(
                      controller: passwordRepeatController,
                      obscureText: true,
                      hintText: context.l10n.repeatYourPassword,
                      validator: (value) =>
                          AppValidators.matchPasswordValidator(
                            value,
                            context,
                            passwordController,
                          ),
                    ),
                    SizedBox(height: p16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: PrimaryButton(
                        text: context.l10n.register,
                        isEnabled: true,
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) {}
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: p16),
          child: TextButtonWidget(
            onPressed: () => context.go("/auth"),
            text: context.l10n.hasAccount,
            buttonText: context.l10n.login,
          ),
        ),
      ),
    );
  }
}
