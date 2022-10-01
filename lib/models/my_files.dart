import 'package:flutter/material.dart';
import '../constants/styles.dart';

class CloudStorageInfo {
  final String? title, totalStorage;
  final IconData? icons;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.icons,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 1328,
    icons: Icons.document_scanner,
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiles: 1328,
    icons: Icons.add_to_drive,
    totalStorage: "2.9GB",
    color: const Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiles: 1328,
    icons: Icons.cloud_circle,
    totalStorage: "1GB",
    color: const Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 5328,
    icons: Icons.insert_drive_file,
    totalStorage: "7.3GB",
    color: const Color(0xFF007EE5),
    percentage: 78,
  ),
];
