import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_messenger/core/constant/app_locales.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/settings/bloc/settings_bloc.dart';

class LanguagesPopup extends StatelessWidget {
  const LanguagesPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(p16),
          ),
          child: Padding(
            padding: EdgeInsets.all(p16),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                itemCount: AppLocales.values.length,
                itemBuilder: (context, i) {
                  return RadioListTile<AppLocales>(
                    title: Text(AppLocales.values[i].fullName),
                    value: AppLocales.values[i],
                    groupValue: state.locale,
                    onChanged: (value) => context.read<SettingsBloc>().add(
                      SetLocaleEvent(locale: value!),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
