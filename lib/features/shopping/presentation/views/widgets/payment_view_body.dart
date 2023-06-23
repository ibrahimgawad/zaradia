import 'package:flutter/material.dart';
import 'package:mypharmacy_app/constant.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_arrow_back_icon.dart';
import 'package:mypharmacy_app/features/home/presentation/views/widgets/custom_home_button.dart';

class PaymentViewBody extends StatefulWidget {
  const PaymentViewBody({super.key});

  @override
  State<PaymentViewBody> createState() => _PaymentViewBodyState();
}

class _PaymentViewBodyState extends State<PaymentViewBody> {
  bool _isSelected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: kPrimaryPadding,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    CustomArrowBackIcon(
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'الدفع',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomPaymentDetailsContainer(
                  text: 'الاسم',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .055,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomPaymentDetailsContainer(
                  text: 'رقم الهاتف',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .055,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomPaymentDetailsContainer(
                  text: 'العنوان',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .055,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomPaymentDetailsContainer(
                        text: 'المحافظة',
                        width: MediaQuery.of(context).size.width * .4,
                        height: MediaQuery.of(context).size.height * .055,
                      ),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Expanded(
                      child: CustomPaymentDetailsContainer(
                        text: 'المدينة',
                        width: MediaQuery.of(context).size.width * .4,
                        height: MediaQuery.of(context).size.height * .055,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected = true;
                        });
                      },
                      child: CustomSelectedPaymentWay(
                        isSelected: _isSelected,
                        color: _isSelected ? kPrimaryColor : Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      'الدفع عند الاستلام',
                      style: TextStyle(
                        fontSize: 13,
                        color: _isSelected ? kPrimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected = false;
                        });
                      },
                      child: CustomSelectedPaymentWay(
                        isSelected: _isSelected,
                        color: _isSelected ? Colors.white : kPrimaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      'الدفع بالفيزا',
                      style: TextStyle(
                        fontSize: 13,
                        color: _isSelected ? Colors.grey : kPrimaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomHomeButon(
                  text: 'التالي',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .053,
                  fontSize: 13,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class CustomSelectedPaymentWay extends StatelessWidget {
  final Color color;
  const CustomSelectedPaymentWay({
    super.key,
    required bool isSelected,
    required this.color,
  }) : _isSelected = isSelected;

  final bool _isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16.0,
      height: 16.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(1),
      child: Container(
        width: 15.0,
        height: 15.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}

class CustomPaymentDetailsContainer extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  const CustomPaymentDetailsContainer({
    super.key,
    required this.height,
    required this.width,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        // height: 75,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(
            .3,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: TextField(
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
        ));
  }
}
