import 'package:admin/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            title: ' Documents Files',
            svgSrc: 'assets/icons/Documents.svg',
            numOfFiles: 1345,
            amountOfFiles: '1.3',
          ),
          StorageInfoCard(
            title: ' Media Files',
            svgSrc: 'assets/icons/media.svg',
            numOfFiles: 1345,
            amountOfFiles: '15.3',
          ),
          StorageInfoCard(
            title: ' Other Files',
            svgSrc: 'assets/icons/folder.svg',
            numOfFiles: 1345,
            amountOfFiles: '1.3',
          ),
          StorageInfoCard(
            title: 'Unkown',
            svgSrc: 'assets/icons/unknown.svg',
            numOfFiles: 1345,
            amountOfFiles: '1.3',
          ),
        ],
      ),
    );
  }
}
