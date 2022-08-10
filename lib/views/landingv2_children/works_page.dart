import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zeuscajurao/app/config.dart';

class LatestWorks extends StatelessWidget {
  const LatestWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, c) {
        final double w = c.maxWidth;
        return Container(
          color: dark,
          padding: EdgeInsets.symmetric(
            horizontal: w <= 800 ? 30 : w * .1,
            vertical: 90,
          ),
          width: w,
          child: LayoutBuilder(
            builder: (_, cc) {
              final double ww = cc.maxWidth;
              return Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.spaceBetween,
                alignment: WrapAlignment.spaceBetween,
                runSpacing: 20,
                children: [
                  SizedBox(
                    width: ww <= 800 ? ww : 600,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: ww <= 800 ? ww : 600,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Latest Works",
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Perfect solutions for real-world problems, digital solution!",
                                    style: TextStyle(
                                      color: white.withOpacity(.5),
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 130,
                              ),
                              Container(
                                width: ww <= 800 ? ww : 600,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(-10, -10),
                                      color: light.withOpacity(.5),
                                      blurRadius: 10,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    end: Alignment.bottomRight,
                                    begin: Alignment.topLeft,
                                    colors: [
                                      Colors.grey.shade900,
                                      light,
                                    ],
                                  ),
                                ),
                                child: LayoutBuilder(builder: (context, ccc) {
                                  final double www = ccc.maxWidth;
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(35),
                                        child: Row(
                                          children: [
                                            const Expanded(
                                              child: Text(
                                                "ShapeYou",
                                                style: TextStyle(
                                                  color: white,
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 10,
                                                vertical: 5,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    Colors.grey.withOpacity(.5),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Text(
                                                "Flutter",
                                                style: TextStyle(
                                                  color: white.withOpacity(.5),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 10,
                                                vertical: 5,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    Colors.grey.withOpacity(.5),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Text(
                                                "Laravel",
                                                style: TextStyle(
                                                  color: white.withOpacity(.5),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: www - 50,
                                        height: 350,
                                        color: Colors.red,
                                      ),
                                      const SizedBox(
                                        height: 35,
                                      ),
                                    ],
                                  );
                                }),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: ww <= 800 ? ww : 700,
                    height: 420,
                    color: Colors.red,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
