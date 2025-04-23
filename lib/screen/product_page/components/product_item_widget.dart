import 'package:e_commerce_app/resources/color/app_color.dart';
import 'package:e_commerce_app/resources/values/constant.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatefulWidget {
  const ProductItemWidget({super.key});

  @override
  State<ProductItemWidget> createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _productImageSection(),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Allen Solly Regular fit cotton shirt",
            style: AppTexyStyle.mediumText(context: context),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "\$35   ",
              style: AppTexyStyle.largeText(context: context),
            ),
            TextSpan(
              text: "\$40.25  ",
              style: TextStyle(
                fontSize: 10,
                color: AppColor.greyColor,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            TextSpan(
              text: "\$20% OFF  ",
              style: AppTexyStyle.smallText(
                  context: context, color: AppColor.redColor),
            )
          ])),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: AppColor.yellowColor,
                    borderRadius: BorderRadius.circular(2)),
                child: const Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.white,
                ),
              ),
              Text(
                "  4.3 (41)",
                style: AppTexyStyle.largeText(
                    context: context, fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _productImageSection() {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage("assets/images/image.jpg"),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: Icon(
            Icons.favorite_border,
            color: AppColor.greyColor,
            weight: 1,
          ),
        ),
      ),
    );
  }
}
