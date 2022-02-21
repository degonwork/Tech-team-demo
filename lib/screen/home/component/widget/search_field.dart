import 'package:flutter/material.dart';
import '../../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.onChanged,
    required this.onTap,
  }) : super(key: key);
  final Function? onChanged;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: SizeConfig.screenWidth * 0.75,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              onChanged: onChanged as void Function(String)?,
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Tìm kiếm.....',
                prefixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap as void Function()?,
            child: Container(
              padding: EdgeInsets.all(
                getProportionateScreenWidth(15),
              ),
              width: getProportionateScreenWidth(58),
              height: getProportionateScreenHeight(58),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/Vector.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
