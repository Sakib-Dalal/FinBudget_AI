import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hugeicons/hugeicons.dart';

class BudgetPlanner extends StatefulWidget {
  const BudgetPlanner({super.key});

  @override
  State<BudgetPlanner> createState() => _BudgetPlannerState();
}

class _BudgetPlannerState extends State<BudgetPlanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101625),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Budget Planner',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Plan, analyze, and optimize your budget',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(18.0),
                        margin: EdgeInsets.symmetric(
                          vertical: 18.0,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff1F2937),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.white24, strokeAlign: 1.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Active Loans',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 100.0,
                                ),
                                Icon(
                                  HugeIcons.strokeRoundedDollarCircle,
                                  color: Colors.purple,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'Total Amount: ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '₹ 5750.00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18.0),
                        margin: EdgeInsets.symmetric(
                          vertical: 18.0,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff1F2937),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.white24, strokeAlign: 1.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Loan Amount',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 100.0,
                                ),
                                Icon(
                                  HugeIcons.strokeRoundedCreditCard,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '₹ 125500.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  HugeIcons.strokeRoundedAnalyticsDown,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '12.5%',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'from last year',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18.0),
                        margin: EdgeInsets.symmetric(
                          vertical: 18.0,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff1F2937),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.white24, strokeAlign: 1.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Monthly Payment',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 100.0,
                                ),
                                Icon(
                                  HugeIcons.strokeRoundedCalendar01,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '₹ 2850.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  HugeIcons.strokeRoundedAnalyticsDown,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '3.2%',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'paid off already',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18.0),
                        margin: EdgeInsets.symmetric(
                          vertical: 18.0,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff1F2937),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.white24, strokeAlign: 1.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Avg. Payoff Time',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 100.0,
                                ),
                                Icon(
                                  HugeIcons.strokeRoundedTime01,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '14.5 years',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  HugeIcons.strokeRoundedAnalyticsUp,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  '1.3 years',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'with current payments',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.all(18.0),
                          decoration: BoxDecoration(
                            color: Color(0xff1F2937),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                                color: Colors.white24, strokeAlign: 1.0),
                          ),
                          width: 200.0,
                          height: 500.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Active Loans',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          padding: EdgeInsets.all(18.0),
                          decoration: BoxDecoration(
                            color: Color(0xff1F2937),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                                color: Colors.white24, strokeAlign: 1.0),
                          ),
                          width: 200.0,
                          height: 500.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AI Loan Optimization',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
