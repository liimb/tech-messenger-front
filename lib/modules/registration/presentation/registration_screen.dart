import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/common/presentation/widget/input_widget.dart';
import 'package:tech_messenger/core/common/presentation/widget/my_snack_bar.dart';
import 'package:tech_messenger/core/common/presentation/widget/primary_button.dart';
import 'package:tech_messenger/core/common/presentation/widget/text_button_widget.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/routing/app_routing.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/core/util/validators.dart';
import 'package:tech_messenger/modules/auth/bloc/auth_bloc.dart';
import 'package:tech_messenger/modules/registration/presentation/bloc/registration_bloc.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late final TextEditingController nicknameController;
  late final TextEditingController nameController;
  late final TextEditingController passwordController;
  late final TextEditingController passwordRepeatController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    nicknameController = TextEditingController();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    passwordRepeatController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nicknameController.dispose();
    nameController.dispose();
    passwordController.dispose();
    passwordRepeatController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        state.mapOrNull(
          loading: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              getSnackBar(context.l10n.registrationProcess, context),
            );
          },
          success: (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              getSnackBar(context.l10n.registrationSuccess, context),
            );
            context.read<AuthBloc>().add(AuthEvent.setAuth());
            context.go(AppRoutes.home.routePath);
          },
          error: (e) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(getSnackBar(e.message, context));
          },
        );
      },
      child: SafeArea(
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
                        controller: nameController,
                        hintText: context.l10n.yourName,
                        validator: (value) =>
                            AppValidators.correctNameValidator(value, context),
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s\s')),
                        ],
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
                        child: BlocBuilder<RegistrationBloc, RegistrationState>(
                          builder: (context, state) => PrimaryButton(
                            text: context.l10n.register,
                            isEnabled: state is! RegistrationLoadingState,
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                context.read<RegistrationBloc>().add(
                                  RegistrationEvent.submit(
                                    nickname: nicknameController.text,
                                    name: nameController.text,
                                    password: passwordController.text,
                                    passwordRepeat:
                                        passwordRepeatController.text,
                                  ),
                                );
                              }
                            },
                          ),
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
              onPressed: () => context.go(AppRoutes.login.routePath),
              text: context.l10n.hasAccount,
              buttonText: context.l10n.login,
            ),
          ),
        ),
      ),
    );
  }
}
