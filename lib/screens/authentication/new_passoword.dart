import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_box/constants/assets.dart';
import 'package:health_box/constants/colors.dart';
import 'package:health_box/generated/locale_keys.g.dart';
import 'package:health_box/utitlity/Utils.dart';
import 'package:health_box/widgets/button.dart';
import 'package:easy_localization/easy_localization.dart';


import '../../constant.dart';

class NewPassword extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<NewPassword> {
  TextEditingController _passwordEditingController =
  new TextEditingController();
  TextEditingController _confirmPasswordEditingController =
  new TextEditingController();
  FocusNode passwordNode = new FocusNode();
  FocusNode confirmPasswordNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              _upperUI(),
              _form(),
              SizedBox(
                height: 60.0,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: RoundedButtonWidget(
                    buttonColor: greenColor,
                    buttonText: LocaleKeys.key_new_pass_text,
                    textColor: Colors.white,
                    onPressed: () {},
                    isIconDisplay: false,
                  )),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _upperUI() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Utils.finishScreen(context);
            },
            child: Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }

  _form() {
    return Form(
      child: Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 80.0),
        child: Column(
          children: [

            Text(LocaleKeys.key_new_pass,style: TextStyle(fontSize: 30.0),).tr(),
            SizedBox(height: 10.0,),
            Text(LocaleKeys.key_new_pass_text,textAlign: TextAlign.center
              ,style: TextStyle(fontSize: 15.0),).tr(),
            SizedBox(height: 50.0,),
            TextFormField(
                keyboardType: TextInputType.text,
                focusNode: passwordNode,
                controller: _passwordEditingController,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (val) {
                  setFocusNode(context: context, focusNode: confirmPasswordNode);

                },
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Oops! please enter password';
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: s10color,
                  // labelText: 'Rate Of Interest',
                  hintText: "Password",
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.visibility_off,
                      color: grey,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: s10color, width: 1.0),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: s10color, width: 1.0),
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: s10color, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                )),
            SizedBox(
              height: 15.0,
            ),
            TextFormField(
                keyboardType: TextInputType.text,
                focusNode: confirmPasswordNode,
                controller: _confirmPasswordEditingController,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (val) {},
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Oops! please enter confirm password';
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: s10color,
                  // labelText: 'Rate Of Interest',
                  hintText: "Confirm Password",
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.visibility_off,
                      color: grey,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: s10color, width: 1.0),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: s10color, width: 1.0),
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: s10color, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
