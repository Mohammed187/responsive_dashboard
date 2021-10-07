import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerListTile(
              title: 'Dashboard',
              svgSrc: 'assets/icons/menu_dashbord.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Transaction',
              svgSrc: 'assets/icons/menu_tran.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Task',
              svgSrc: 'assets/icons/menu_task.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Documents',
              svgSrc: 'assets/icons/menu_doc.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Store',
              svgSrc: 'assets/icons/menu_store.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Notification',
              svgSrc: 'assets/icons/menu_notification.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Profile',
              svgSrc: 'assets/icons/menu_profile.svg',
              onPressed: () {},
            ),
            DrawerListTile(
              title: 'Settings',
              svgSrc: 'assets/icons/menu_setting.svg',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.svgSrc,
    @required this.onPressed,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
