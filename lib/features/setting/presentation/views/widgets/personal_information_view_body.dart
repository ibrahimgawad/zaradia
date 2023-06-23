import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_arrow_back_icon.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_home_button.dart';

import '../../../../../constant.dart';

class PersonalInformationViewBody extends StatefulWidget {
  const PersonalInformationViewBody({super.key});

  @override
  State<PersonalInformationViewBody> createState() =>
      _PersonalInformationViewBodyState();
}

class _PersonalInformationViewBodyState
    extends State<PersonalInformationViewBody> {
  String currentPassword = '';
  String newPassword = '';
  String confirmPassword = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: kPrimaryPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const  SizedBox(
              height: 30,
            ),
          const  Row(
              children: [
                CustomArrowBackIcon(
                  color: Colors.black,
                  size: 20,
                ),
                Text(
                  'هالمعلومات الشخصيه',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
         const   SizedBox(
              height: 25,
            ),
           const CustomPersonalInformationContainer(
              text: 'الاسم',
            ),
        const    SizedBox(
              height: 16,
            ),
         const   CustomPersonalInformationContainer(
              text: 'رقم الهاتف',
            ),
         const   SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                showChangePasswordBottomSheet(context);
              },
              child: const Text(
                'تغير كلمه المرور',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void showChangePasswordBottomSheet(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              right: 38,
              left: 38,
              top: 30,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'تغير كلمه المرور',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 31),
                  CustomChangePasswordContainer(
                    text: 'كلمه المرور الحاليه',
                    onChanged: (value) {
                      setState(() {
                        currentPassword = value;
                      });
                    },
                  ),
                  const SizedBox(height: 9),
                  CustomChangePasswordContainer(
                    text: 'كلمه المرور الجديده',
                    onChanged: (value) {
                      setState(() {
                        newPassword = value;
                      });
                    },
                  ),
                  const SizedBox(height: 9),

                  CustomChangePasswordContainer(
                    text: 'تاكيد كلمه المرور الجديده',
                
                    onChanged: (value) {
                      confirmPassword = value;
                    },
                    validator: (value) {
                      // if (value == null || value.isEmpty) {
                      //   return 'Please enter your name';
                      // }
                      // return null;

                      if (value != newPassword) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: CustomHomeButon(
                          text: 'حفظ',
                          width: MediaQuery.of(context).size.width * .4,
                          height: MediaQuery.of(context).size.height * .045,
                          fontSize: 11,
                          onTap: () {
                            //   Text(
                            //   _formKey.currentState?.validate() == true
                            //       ? 'Name is valid'
                            //       : '',
                            //   style: TextStyle(
                            //     color: _formKey.currentState?.validate() == true
                            //         ? Colors.green
                            //         : Colors.red,
                            //     fontSize:
                            //         100.0, // set font size to a smaller value
                            //   ),
                            // );
                            if (_formKey.currentState!.validate()) {
                              // Perform save operation here
                              Navigator.pop(context);
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .045,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: kPrimaryColor,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'الغاء',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 64,
                  )
                  // ElevatedButton(
                  //   child: Text('Save'),
                  //   onPressed: () {
                  //     // Perform save operation here
                  //     Navigator.pop(context);
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class CustomPersonalInformationContainer extends StatelessWidget {
  final String text;
  const CustomPersonalInformationContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      height: MediaQuery.of(context).size.height * .055,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(
          .3,
        ),
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: TextFormField(
        cursorColor: kPrimaryColor,
        cursorHeight: 20,
        style: const TextStyle(
          fontSize: 12,
        ),
        maxLines: 4,
        decoration: InputDecoration.collapsed(
          hintText: text,
          hintStyle: const TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

class CustomChangePasswordContainer extends StatelessWidget {
  final String text;
  String? Function(String?)? validator;
  void Function(String)? onChanged;

  final int? maxLines;
  CustomChangePasswordContainer({
    super.key,
    required this.text,
    this.onChanged,
    this.validator, this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        height: MediaQuery.of(context).size.height * .09,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(
            .3,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: TextFormField(
        
          minLines:maxLines ,
          validator: validator,
          onChanged: onChanged,
          cursorColor: kPrimaryColor,
          cursorHeight: 20,
          style: const TextStyle(
            fontSize: 12,
          ),
          maxLines: 4,
          decoration: InputDecoration.collapsed(
            
            hintText: text,
            hintStyle: const TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ),
      );   
    });
  }
}
