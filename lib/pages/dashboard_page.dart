import 'package:flutter/material.dart';
import 'package:flutter_megaloman/common/widgets/menu_card.dart';
import 'package:flutter_megaloman/common/widgets/search_input.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: [
        SearchInput(controller: searchController),
        const SizedBox(height: 20.0),
        MenuCard(
          label: 'label',
          backgroundColor: const Color(0xffFFB023),
          onPressed: () {},
        )
      ],
    );
  }
}
