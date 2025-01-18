import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class On_Bording extends StatelessWidget {
  const On_Bording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/Group@3x.png"))),
        child: Padding(
          padding: const EdgeInsets.only(top: 65),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image/Frame.png"))),
                  ),
                  Text(
                    " Docdoc",
                    style: TextStyle(
                        color: Color(0xff242424),
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    width: 375,
                    height: 491,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image/image.png"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 400, left: 32),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffFFFFFF).withAlpha(100),
                              Color(0xffFFFFFF).withAlpha(200),
                              Color(0xffFFFFFF).withAlpha(200),
                              Color(0xffFFFFFF)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Best Doctor Appointment App",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 32,
                                color: Color(0xff247CFF)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff757575),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff247CFF),
                      // تغيير لون الخلفية
                      // تغيير لون النص
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(16), // تغيير شكل الزر
                      ),
                      minimumSize: Size(311, 52), // الحد الأدنى للحجم
                      maximumSize: Size(311, 70), // تغيير حجم الزر
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Color(0xffFFFFFF)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
