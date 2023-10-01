import 'package:flutter/material.dart';
import 'package:lesson54_provider_email_app/provider/email_provider.dart';
import 'package:lesson54_provider_email_app/ui/fonts/app_fonts.dart';
import 'package:provider/provider.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/name_textfield_widget.dart';
import '../widgets/phone_field_widget.dart';
import '../widgets/textfield_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerName = TextEditingController();
    final TextEditingController controllerLastName = TextEditingController();
    final TextEditingController controllerEmail = TextEditingController();
    final TextEditingController controllerPhone = TextEditingController();
    final TextEditingController controllerMessage = TextEditingController();

    final vm = context.watch<EmailProvider>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(9),
            child: SingleChildScrollView(
              // reverse: true,
              child: Column(
                children: [
                  const Text(
                    'Contact',
                    style: AppFonts.contactStyle,
                  ),
                  const SizedBox(height: 5),
                  const SizedBox(
                    width: 270,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam duis vitae curabitur amet, fermentum lorem.',
                      style: AppFonts.textStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 35),
                  NameTextFieldWidget(
                    controllerName: controllerName,
                    controllerLastName: controllerLastName,
                  ),
                  const SizedBox(height: 25),
                  TextFieldWidget(
                    controller: controllerEmail,
                    hintText: 'yourmail@gmail.com',
                    labelText: 'E-mail',
                    suffixIcon: const Icon(Icons.email_outlined),
                  ),
                  const SizedBox(height: 25),
                  PhoneFieldWidget(
                    controllerPhone: controllerPhone,
                  ),
                  const SizedBox(height: 15),
                  TextFieldWidget(
                    controller: controllerMessage,
                    hintText: 'Your message',
                    labelText: 'Message',
                    maxLines: 7,
                  ),
                  const SizedBox(height: 40),
                  CustomButtonWidget(
                    vm: vm,
                    controllerName: controllerName,
                    controllerLastName: controllerLastName,
                    controllerEmail: controllerEmail,
                    controllerPhone: controllerPhone,
                    controllerMessage: controllerMessage,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
