import 'package:flutter/material.dart';
import 'package:mypharmacy_app/features/setting/presentation/views/widgets/personal_information_view_body.dart';

import '../../../../../constant.dart';
import '../../../../home/presentation/views/widgets/custom_arrow_back_icon.dart';
import '../../../../home/presentation/views/widgets/custom_home_button.dart';

class SaveAddressViewBody extends StatelessWidget {
  const SaveAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: kPrimaryPadding,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  CustomArrowBackIcon(
                    color: Colors.black,
                    size: 20,
                  ),
                  Text(
                    'العنوان المحفوظ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              CustomPersonalInformationContainer(
                text: 'العنوان',
              ),
              SizedBox(
                height: 40,
              ),
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
                        // if (_formKey.currentState!.validate()) {
                        //   // Perform save operation here
                        //   Navigator.pop(context);
                        // }
                      },
                    ),
                  ),
                  SizedBox(
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
            ])));
  }
}
