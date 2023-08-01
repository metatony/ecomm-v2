// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class CartItemContainer extends StatelessWidget {
  const CartItemContainer({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.onTap,
    //required this.index,
  });

  final String title, image;
  final num price;
  final Function()? onTap;
  //final int index;

  @override
  Widget build(BuildContext context) {
    NotifierState provider = Provider.of<NotifierState>(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 15.w),
          height: 103.h,
          width: 341.w,
          decoration: BoxDecoration().curvedRadius(
              borderRadius: 0.r, color: Color.fromARGB(255, 236, 234, 234)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      //!product image
                      SizedBox(
                        width: 83.w,
                        height: 89.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.network(image, fit: BoxFit.cover),
                        ),
                      ),

                      //! product description
                      SizedBox(width: 10.w),
                      Expanded(
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: title.txt(
                                      overflow: TextOverflow.ellipsis)),
                              'Size L'.txt(),
                              sizedHeight(),
                              '\$$price'.toString().txt(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // cart product card buttons
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: onTap,
                      child: ImageIcon(
                        AssetImage('assets/images/trash-03.png'),
                        color: Colors.red,
                      ),
                    ),

                    //! cart counter
                    SizedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //! decrement
                          InkWell(
                            onTap: () {
                              provider.decrement();
                            },
                            child: Container(
                              height: 23.h,
                              width: 23.w,
                              decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2.0, color: Colors.black))
                                  .curvedRadius(
                                borderRadius: 2.r,
                                color: Colors.transparent,
                              ),
                              child: Icon(FeatherIcons.minus),
                            ),
                          ),
                          SizedBox(
                              height: 23.h,
                              width: 23.h,
                              child:
                                  provider.counter.toString().txt().center()),

                          //! increment
                          InkWell(
                            onTap: () {
                              provider.increment();
                            },
                            child: Container(
                              height: 23.h,
                              width: 23.w,
                              decoration: BoxDecoration().curvedRadius(
                                borderRadius: 2.r,
                                color: Colors.transparent,
                              ),
                              child: Icon(FeatherIcons.plus),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        sizedHeight()
      ],
    );
  }
}
