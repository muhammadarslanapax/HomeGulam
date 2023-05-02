import 'package:ecommerce_app/res/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../res/components/custom_appbar.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({Key? key}) : super(key: key);

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: CustomAppBar(
              txtcolor: AppColors.blackColor,
              iconData: Icons.arrow_back_rounded,
              text: 'Reviews',
            )),
        body: Container(
          width: _width,
          height: _height,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: const customListtile(),
        ),
      ),
    );
  }
}

class customListtile extends StatelessWidget {
  const customListtile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const SizedBox(
                width: 51,
                height: 51,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://png.pngtree.com/png-clipart/20210915/ourlarge/pngtree-avatar-placeholder-abstract-white-blue-green-png-image_3918476.jpg"),
                ),
              ),
              title: const Text(
                "Jenifer lorain",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                "2 Day ago",
                style: TextStyle(
                    color: AppColors.text_color_light,
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RatingBar.builder(
                    itemSize: 10,
                    initialRating: 1.4,
                    minRating: 1,
                    updateOnDrag: false,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.all(0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    "2.5",
                    style: TextStyle(fontSize: 12, color: AppColors.blackColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                '"Service Provide by Jenny was very good. Recommended"',
                style: TextStyle(
                    fontSize: 13,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    VerticalDivider(
                      thickness: 2,
                    ),
                    SizedBox(
                      width: 51,
                      height: 51,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://png.pngtree.com/png-clipart/20210915/ourlarge/pngtree-avatar-placeholder-abstract-white-blue-green-png-image_3918476.jpg"),
                      ),
                    ),
                  ],
                ),
                title: Text(
                  "Jenifer lorain",
                  style: TextStyle(fontSize: 12, color: AppColors.blackColor),
                ),
                subtitle: Text(
                  "2 Day ago",
                  style: TextStyle(
                      fontSize: 10,
                      color: AppColors.blackColor,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                '"Jenifer was a very supportive client"',
                style: TextStyle(fontSize: 13, color: AppColors.blackColor),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        );
      },
      itemCount: 9,
    );
  }
}
