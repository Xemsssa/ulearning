import 'package:flutter/material.dart';

import '../../../common/values/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 300,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.primaryBackground,
                border: Border.all(
                    width: 1, color: AppColors.primaryFourElementText
                )
            ),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.all(5),
                    child: Icon(Icons.search)
                ),
                Container(
                  width: 260,
                  // height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                        labelText: "Search your course..."
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: AppColors.primaryElement,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(Icons.equalizer,
              color: AppColors.primaryBackground,),
          )
        ],
      ),
    );
  }
}

