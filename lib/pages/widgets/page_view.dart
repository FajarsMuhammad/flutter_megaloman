import 'package:flutter/material.dart';
import 'package:flutter_megaloman/pages/widgets/big_text.dart';
import 'package:flutter_megaloman/pages/widgets/icon_and_text.dart';
import 'package:flutter_megaloman/pages/widgets/small_text.dart';

class PageViews extends StatelessWidget {
  PageViews({super.key});
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(children: [
      Container(
        height: 220,
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFF69c5df),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.35),
              BlendMode.multiply,
            ),
            image: const NetworkImage(
              'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120,
          margin: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                offset: const Offset(
                  0.0,
                  5.0,
                ),
                blurRadius: 5.0,
                spreadRadius: -6.0,
              ),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Korean Chicken"),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Wrap(
                        children: List.generate(
                            5,
                            (index) => const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ))),
                    const SizedBox(width: 10),
                    SmallText(text: "4.5"),
                    const SizedBox(width: 10),
                    SmallText(text: "1000"),
                    const SizedBox(width: 2),
                    SmallText(text: "Comments"),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    IconText(
                      icon: Icons.circle_sharp,
                      iconColor: Colors.orangeAccent,
                      text: "Normal",
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    IconText(
                      icon: Icons.location_on,
                      iconColor: Colors.greenAccent,
                      text: "1.7km",
                      color: Colors.black,
                    ),
                    SizedBox(width: 20),
                    IconText(
                      icon: Icons.access_time_rounded,
                      iconColor: Colors.redAccent,
                      text: "2min",
                      color: Colors.black,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
