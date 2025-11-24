import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/common/presentation/widget/input_widget.dart';
import 'package:tech_messenger/core/common/presentation/widget/my_snack_bar.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/constant/avatar_size.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/core/util/validators.dart';
import 'package:tech_messenger/modules/avatar/presentation/avatar_widget.dart';
import 'package:tech_messenger/modules/editor/domain/repository/editor_repository_interface.dart';
import 'package:tech_messenger/modules/editor/presentation/bloc/editor_bloc.dart';
import 'package:tech_messenger/modules/home/presentation/widget/scroll_physics.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';
import 'package:tech_messenger/modules/user/presentation/bloc/user_bloc.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({super.key});

  @override
  State<StatefulWidget> createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  late final TextEditingController nameController;
  late final TextEditingController descriptionController;
  final _nameFormKey = GlobalKey<FormState>();
  final _descriptionFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(UserEvent.fetchUser());
    nameController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          EditorBloc(editorRepository: context.read<IEditorRepository>()),
      child: BlocListener<EditorBloc, EditorState>(
        listener: (context, state) {
          state.mapOrNull(
            loading: (_) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(getSnackBar(context.l10n.editingProcess, context));
            },
            success: (_) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(getSnackBar(context.l10n.editingSuccess, context));
              context.read<UserBloc>().add(UserEvent.fetchUser());
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
            body: CustomScrollView(
              physics: SlowScrollPhysics(),
              slivers: [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: context.appTheme.primaryColor,
                  surfaceTintColor: Colors.transparent,
                  title: Text(
                    context.l10n.editProfile,
                    style: context.appTextTheme.heading1,
                  ),
                  leading: Builder(
                    builder: (context) => IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color:
                            context.appTheme.appBarTheme.titleTextStyle?.color,
                      ),
                      onPressed: () => context.pop(),
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child: BlocBuilder<UserBloc, UserState>(
                    builder: (context, userState) {
                      if (userState is UserLoadingState) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(p32),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }

                      UserModel user = const UserModel(nickname: '', name: '');

                      if (userState is UserLoadedState) {
                        user = userState.user;

                        nameController.text = user.name;
                        descriptionController.text = user.description ?? "";
                      }

                      return BlocBuilder<EditorBloc, EditorState>(
                        builder: (context, state) {
                          return Padding(
                            padding: const EdgeInsets.all(p24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: p8,
                              children: [
                                GestureDetector(
                                  child: UserAvatarWidget(
                                    userData: user,
                                    avatarSize: AvatarSize.big,
                                  ),
                                  onTap: () async {
                                    String? newAvatar = await context
                                        .read<EditorBloc>()
                                        .pickImageAndEncode();
                                    print(
                                      "avatar length = ${newAvatar!.length}",
                                    );
                                    if (newAvatar != null && context.mounted) {
                                      context.read<EditorBloc>().add(
                                        EditorEvent.avatarChanged(newAvatar),
                                      );
                                    }
                                  },
                                ),

                                const SizedBox(height: p24),

                                Form(
                                  key: _nameFormKey,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: p8,
                                    children: [
                                      Expanded(
                                        child: InputWidget(
                                          controller: nameController,
                                          hintText: user.name,
                                          validator: (value) =>
                                              AppValidators.correctNameValidator(
                                                value,
                                                context,
                                              ),
                                          inputFormatters: [
                                            FilteringTextInputFormatter.deny(
                                              RegExp(r'\s\s'),
                                            ),
                                          ],
                                        ),
                                      ),

                                      ElevatedButton(
                                        onPressed:
                                            context.read<EditorBloc>().state
                                                is EditorInitialState
                                            ? () {
                                                _nameFormKey.currentState
                                                    ?.validate();
                                                if (_nameFormKey.currentState
                                                        ?.validate() ??
                                                    true) {
                                                  if (nameController.text !=
                                                      user.name) {
                                                    context
                                                        .read<EditorBloc>()
                                                        .add(
                                                          NameChangedEvent(
                                                            nameController.text
                                                                .trim(),
                                                          ),
                                                        );
                                                  }
                                                }
                                              }
                                            : null,
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: context
                                              .appColors
                                              .onPrimaryContainer,
                                        ),
                                        child: Icon(Icons.check),
                                      ),
                                    ],
                                  ),
                                ),
                                Form(
                                  key: _descriptionFormKey,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    spacing: p8,
                                    children: [
                                      Expanded(
                                        child: InputWidget(
                                          controller: descriptionController,
                                          validator: (value) =>
                                              AppValidators.correctNameValidator(
                                                value,
                                                context,
                                              ),
                                          maxLines: null,
                                          inputFormatters: [
                                            FilteringTextInputFormatter.deny(
                                              RegExp(r'\s\s'),
                                            ),
                                          ],
                                        ),
                                        // TextFormField(
                                        //   decoration: InputDecoration(
                                        //     errorBorder: OutlineInputBorder(
                                        //       borderSide: BorderSide(
                                        //         color: context
                                        //             .appColors
                                        //             .errorColor,
                                        //       ),
                                        //       borderRadius:
                                        //           BorderRadius.circular(p24),
                                        //     ),
                                        //     contentPadding: EdgeInsets.all(p16),
                                        //     border: OutlineInputBorder(
                                        //       borderRadius:
                                        //           BorderRadius.circular(p24),
                                        //     ),
                                        //     enabledBorder: OutlineInputBorder(
                                        //       borderSide: BorderSide(
                                        //         color: context
                                        //             .appColors
                                        //             .primaryColor700,
                                        //       ),
                                        //       borderRadius:
                                        //           BorderRadius.circular(p24),
                                        //     ),
                                        //   ),
                                        //   maxLines: null,
                                        //   controller: descriptionController,
                                        //   validator: (value) =>
                                        //       AppValidators.correctNameValidator(
                                        //         value,
                                        //         context,
                                        //       ),
                                        // ),
                                      ),
                                      ElevatedButton(
                                        onPressed:
                                            context.read<EditorBloc>().state
                                                is EditorInitialState
                                            ? () {
                                                if (descriptionController
                                                        .text !=
                                                    (user.description ?? "")) {
                                                  context
                                                      .read<EditorBloc>()
                                                      .add(
                                                        DescriptionChangedEvent(
                                                          descriptionController
                                                              .text,
                                                        ),
                                                      );
                                                }
                                              }
                                            : null,
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: context
                                              .appColors
                                              .onPrimaryContainer,
                                        ),
                                        child: Icon(Icons.check),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    super.dispose();
  }
}
