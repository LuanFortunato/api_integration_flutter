import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'icon_button_login_with.dart';

class RowIconsLoginWith extends StatelessWidget {
  const RowIconsLoginWith({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        IconButtonLoginWith(
          icon: Icon(
            MdiIcons.linkedin,
            size: 25,
            color: Color.fromRGBO(75, 14, 136, 1),
          ),
          iconSize: 30,
        ),
        IconButtonLoginWith(
          icon: Icon(
            MdiIcons.google,
            size: 25,
            color: Color.fromRGBO(75, 14, 136, 1),
          ),
          iconSize: 30,
        ),
        IconButtonLoginWith(
          icon: Icon(
            MdiIcons.github,
            size: 30,
            color: Color.fromRGBO(75, 14, 136, 1),
          ),
          iconSize: 30,
        ),
      ],
    );
  }
}
