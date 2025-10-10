import 'package:flutter/material.dart';
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
import 'package:tech_messenger/modules/login/presentation/bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController nicknameController;
  late final TextEditingController passwordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    nicknameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nicknameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) => state.mapOrNull(
        loading: (_) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(getSnackBar(context.l10n.loginProcess, context));
        },
        success: (_) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(getSnackBar(context.l10n.loginSuccess, context));
          context.go(AppRoutes.home.routePath);
        },
        failure: (e) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(getSnackBar(e.msg, context));
        },
      ),
      child: Scaffold(
        body: SafeArea(
          top: false,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: p32, horizontal: p32),
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(context.l10n.auth, style: context.appTextTheme.large),
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: BlocBuilder<LoginBloc, LoginState>(
                        builder: (context, state) => PrimaryButton(
                          text: context.l10n.login,
                          isEnabled: state is! LoginLoadingState,
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              context.read<LoginBloc>().add(
                                LoginEvent.tryLogin(
                                  nickname: nicknameController.text,
                                  password: passwordController.text,
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
            onPressed: () => context.go(AppRoutes.registration.routePath),
            text: context.l10n.noAccount,
            buttonText: context.l10n.register,
          ),
        ),
      ),
    );
  }
}
