import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:hugeicons/hugeicons.dart';

import 'Screens/dashboard.dart';
import 'Screens/loan_management.dart';
import 'Screens/budget_planner.dart';
import 'Screens/analytics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();

  @override
  void initState() {
    sideMenu.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: sideMenu,
            style: SideMenuStyle(
              openSideMenuWidth: 230,
              itemOuterPadding: EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 12.0,
              ),
              displayMode: SideMenuDisplayMode.auto,
              showHamburger: false,
              hoverColor: Color(0xff374151),
              selectedHoverColor: Colors.black,
              selectedColor: Color(0xff374151),
              selectedTitleTextStyle: TextStyle(color: Colors.white),
              unselectedTitleTextStyle: TextStyle(color: Colors.grey),
              selectedIconColor: Colors.white,
              unselectedIconColor: Colors.grey,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              backgroundColor: Color(0xff1F2937),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 22.0,
                    horizontal: 18.0,
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 200,
                      maxWidth: 150,
                    ),
                    child: Text(
                      'FinBudget AI',
                      style: TextStyle(
                        color: Color(0xff60A5FA),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                // const Divider(
                //   indent: 8.0,
                //   endIndent: 8.0,
                // ),
              ],
            ),
            footer: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Center(
                              child: Text(
                                'SD',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sakib Dalal',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              Text(
                                'sakibdalal@gmail.com',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            items: [
              SideMenuItem(
                title: 'Dashboard',
                onTap: (index, _) {
                  sideMenu.changePage(index);
                },
                icon: Icon(HugeIcons.strokeRoundedDashboardSquare01),
              ),
              SideMenuItem(
                title: 'Loan Management',
                onTap: (index, _) {
                  sideMenu.changePage(index);
                },
                icon: Icon(HugeIcons.strokeRoundedDollarCircle),
              ),
              SideMenuItem(
                title: 'Budget Planner',
                onTap: (index, _) {
                  sideMenu.changePage(index);
                },
                icon: const Icon(HugeIcons.strokeRoundedCalculator01),
              ),
              SideMenuItem(
                title: 'Analytics',
                onTap: (index, _) {
                  sideMenu.changePage(index);
                },
                icon: const Icon(HugeIcons.strokeRoundedAnalysisTextLink),
              ),
              SideMenuItem(
                title: 'AI Insights',
                onTap: (index, _) {
                  sideMenu.changePage(index);
                },
                icon: const Icon(HugeIcons.strokeRoundedZap),
              ),
            ],
          ),
          const VerticalDivider(
            width: 0,
          ),
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              children: [
                Dashboard(),
                LoanManagement(),
                BudgetPlanner(),
                Analytics(),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Files',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
