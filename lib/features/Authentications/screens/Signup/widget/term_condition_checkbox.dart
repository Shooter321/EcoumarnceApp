import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../Controllers/Signup/signup_controller.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller  = SignupController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            width: 25, height: 25, child: Obx(
        () =>Checkbox(
            value:controller.privacyPolicy.value,
            onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value))
        ),
        const SizedBox(height: TSize.spaceBtwItem,),

        Text.rich(TextSpan(children: [
          TextSpan(text: TTexts.iAgreeTo,style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: TTexts.privacyPolicy,style: Theme.of(context).textTheme.bodyMedium!.apply(
            color: dark ? TColors.white:TColors.primary,
            decoration: TextDecoration.underline,
            decorationColor:  dark ? TColors.white:TColors.primary,
          )),
          TextSpan(text: TTexts.and,style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: TTexts.termsOfUse,style: Theme.of(context).textTheme.bodyMedium!.apply(
            color: dark ? TColors.white:TColors.primary,
            decoration: TextDecoration.underline,
            decorationColor:  dark ? TColors.white:TColors.primary,
          )),
        ])
        )
      ],
    );
  }
}