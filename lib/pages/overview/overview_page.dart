import 'package:flutter/material.dart';
import 'package:overview_003/constants/styles.dart';
import 'components/chart.dart';
import 'components/header.dart';

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
                  child: Container(
                    height: 500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: defaultPadding),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(defaultPadding),
                    decoration: const BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Storage Details',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: defaultPadding),
                        Chart(),
                        StorageInfoCard(
                          icons: Icons.document_scanner,
                          title: 'Document Files',
                          amountOfFiles: '1.3GB',
                          numOfFiles: 1328,
                          iconColor: primaryColor,
                        ),
                        StorageInfoCard(
                          icons: Icons.perm_media,
                          title: 'Media Files',
                          amountOfFiles: '15.3GB',
                          numOfFiles: 1328,
                          iconColor: Color(0xFF26E5FF),
                        ),
                        StorageInfoCard(
                          icons: Icons.folder,
                          title: 'Other Files',
                          amountOfFiles: '1.3GB',
                          numOfFiles: 1328,
                          iconColor: Color(0xFFFFCF26),
                        ),
                        StorageInfoCard(
                          icons: Icons.insert_drive_file,
                          title: 'Unknown Files',
                          amountOfFiles: '15.3GB',
                          numOfFiles: 140,
                          iconColor: Color(0xFFEE2727),
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
    );
  }
}

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.amountOfFiles,
    required this.icons,
    required this.numOfFiles,
    required this.iconColor,
  }) : super(key: key);

  final String title, amountOfFiles;
  final IconData icons;
  final int numOfFiles;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(.15)),
        borderRadius: const BorderRadius.all(Radius.circular(defaultPadding)),
      ),
      child: Row(children: [
        SizedBox(
          height: 20,
          width: 20,
          child: Icon(
            icons,
            color: iconColor,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "$numOfFiles 1329 Files",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(color: Colors.white70),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        Text(amountOfFiles),
      ]),
    );
  }
}
