import 'package:flutter/material.dart';
import 'package:overview_003/constants/styles.dart';
import 'package:overview_003/layout/responsive.dart';
import 'package:overview_003/pages/overview/components/recent_files.dart';
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
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: const [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles()
                    ],
                  ),
                ),
                const SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
