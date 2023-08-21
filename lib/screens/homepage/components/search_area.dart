// ignore_for_file: prefer_const_constructors

import '../../../utils/exports.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            width: 259.w,
            height: 53.h,
            decoration: BoxDecoration().curvedRadius(color: Color(0xfff2f2f2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(FeatherIcons.search, size: 18),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 8, left: 10.0),
                      //prefixIcon: Icon(FeatherIcons.search),
                     // prefixIconColor: Colors.black,
                      hintText: 'Search anything',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 53.w,
            height: 53.h,
            decoration: BoxDecoration().curvedRadius(color: Colors.black),
            child: ImageIcon(AssetImage('assets/images/filter-lines.png'), color: white)
                .center(),
          ),
        ],
      ),
    );
  }
}
