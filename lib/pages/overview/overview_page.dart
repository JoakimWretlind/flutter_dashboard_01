import 'package:flutter/material.dart';
import 'package:overview_003/constants/styles.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/storage_details.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  flex: 5,
                  child: MyFiles(),
                ),
                SizedBox(width: defaultPadding),
                Expanded(flex: 2, child: StorageDetails()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
