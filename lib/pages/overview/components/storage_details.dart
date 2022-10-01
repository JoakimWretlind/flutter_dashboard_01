import 'package:flutter/material.dart';
import 'package:overview_003/pages/overview/components/chart.dart';

import '../../../constants/styles.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
