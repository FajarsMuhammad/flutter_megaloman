import 'package:flutter/material.dart';
import 'package:flutter_megaloman/common/constant/colors.dart';
import 'package:flutter_megaloman/pages/widgets/menu_card.dart';
import 'package:flutter_megaloman/pages/widgets/page_view.dart';
import 'package:flutter_megaloman/pages/widgets/recipe_card.dart';
import 'package:flutter_megaloman/pages/widgets/search_input.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final searchController = TextEditingController();
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: [
        SearchInput(controller: searchController),
        const SizedBox(height: 20.0),
        PageViews(
          controller: pageController,
          currPageValue: _currPageValue,
        ),
        const SizedBox(height: 20),
        // const RecipeCard(
        //   title: 'My recipe',
        //   rating: '4.9',
        //   cookTime: '30 min',
        //   thumbnailUrl:
        //       'https://lh3.googleusercontent.com/ei5eF1LRFkkcekhjdR_8XgOqgdjpomf-rda_vvh7jIauCgLlEWORINSKMRR6I6iTcxxZL9riJwFqKMvK0ixS0xwnRHGMY4I5Zw=s360',
        // ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
