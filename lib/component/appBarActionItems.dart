// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

import "../style/colors.dart";

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/images/calendar.svg',
            width: 20.0,
          ),
        ),
        SizedBox(width: 10.0),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/images/ring.svg',
            width: 20.0,
          ),
        ),
        SizedBox(width: 15.0),
        Row(
          children: [
            CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D',
              ),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
              color: AppColors.black,
            )
          ],
        ),
      ],
    );
  }
}