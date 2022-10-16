import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/otp/otp_screen.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constatns.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        buildFirstNameFormField(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        buildLastNameFormField(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        buildPhoneNumberFormField(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        buildAddressFormField(),
        FormError(errors: errors),
        SizedBox(
          height: getProportionateScreenHeight(40),
        ),
        DefaultButton(
          text: "Continue",
          press: () {
            if (_formKey.currentState!.validate()) {
              Navigator.pushNamed(context, OtpScreen.routeName);
            }
          },
        )
      ]),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
        return null;
      },
      validator: (String? value) {
        if (value != null &&
            value.isEmpty &&
            !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Address",
          hintText: "Enter your Address",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffix:
              CustomSurffixIcon(svgIcon: "assets/icons/Location point.svg")),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
        return null;
      },
      validator: (String? value) {
        if (value != null &&
            value.isEmpty &&
            !errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Phone number",
          hintText: "Enter your phone number",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffix: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg")),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue!,
      validator: (String? value) {
        if (value != null &&
            value.isEmpty &&
            !errors.contains(kNamelNullError)) {
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Last Name",
          hintText: "Enter your last name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffix: CustomSurffixIcon(svgIcon: "assets/icons/User.svg")),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
        return null;
      },
      validator: (String? value) {
        if (value != null &&
            value.isEmpty &&
            !errors.contains(kNamelNullError)) {
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "First Name",
          hintText: "Enter your first name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffix: CustomSurffixIcon(svgIcon: "assets/icons/User.svg")),
    );
  }
}
