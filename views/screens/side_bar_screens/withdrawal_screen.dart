import 'package:flutter/material.dart';
import 'package:gospelai_multi_web_admin/views/screens/side_bar_screens/widgets/withdrawal_list.dart';

class WithdrawalScreen extends StatefulWidget {
  static const String id = '\WithdrawalScreen';

  @override
  State<WithdrawalScreen> createState() => _WithdrawalScreenState();
}

class _WithdrawalScreenState extends State<WithdrawalScreen> {
  Widget _rowHeader(String text, int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade700),
          color: Colors.blueAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'withdrawal',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                _rowHeader('NAME', 1),
                _rowHeader('AMOUNT', 3),
                _rowHeader('BANK NAME', 2),
                _rowHeader('BANK ACCOUNT', 2),
                _rowHeader('EMAIL', 1),
                _rowHeader('PHONE', 1),
              ],
            ),
            WithdrawalList(),
          ],
        ),
      ),
    );
  }
}
