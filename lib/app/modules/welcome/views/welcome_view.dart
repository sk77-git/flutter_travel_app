import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce/app/modules/main/views/main_view.dart';
import 'package:getx_ecommerce/app/widgets/app_large_text.dart';
import 'package:getx_ecommerce/app/widgets/app_text.dart';

import '../../../constants/constants.dart';
import '../../../widgets/responsive_button.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var images = [
      "assets/welcome-one.png",
      "assets/welcome-two.png",
      "assets/welcome-three.png"
    ];
    var titles = ["Trips", "Flies", "Floats"];
    var subtitles = ["Mountain", "Paragliding", "Rivers"];
    var details = [
      "Mountain hikes gives you an incredible sense of freedom along with endurance test",
      "Fly in the open sky with the birds and free your body and mind.",
      "Rafting is the way get wet in enjoyment of nature"
    ];
    return Scaffold(
      body: PageView.builder(
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
              padding: const EdgeInsets.only(top: 200, left: 10),
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images[index]), fit: BoxFit.cover)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppLargeText(text: titles[index]),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(text: subtitles[index]),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: details[index],
                        size: 18,
                        color: AppColors.textColor1,
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.to(MainView());
                            /*BlocProvider.of<AppCubit>(context).getPlacesdata();*/
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Hello")));
                            /*BlocProvider.of<AppCubit>(context).checkInternet();*/
                          },
                          child: ResponsiveButton())
                    ],
                  ),
                  Column(
                    children: [
                      ...List.generate(
                          3,
                          (indexDots) => Container(
                                margin: const EdgeInsets.only(bottom: 2),
                                height: index == indexDots ? 25 : 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: index == indexDots
                                        ? AppColor.mainClr
                                        : AppColors.mainColor.withOpacity(0.5)),
                              )),
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}
