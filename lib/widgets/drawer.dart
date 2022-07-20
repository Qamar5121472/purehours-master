import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
    Widget buildListTile(
    String title,
    IconData icon,
    VoidCallback _selectHandler,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: _selectHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'POUREHOURS!',
              
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
            // subtitle: Text(data);
          ),
          SizedBox(
            height: 30,
          ),
          buildListTile(
            'Profile',
            Icons.person,
            () => Navigator.pushReplacementNamed(
              context,
              '/',
            ),
          ),
          buildListTile(
            'Sign Out',
            Icons.logout,
            () => Navigator.pushReplacementNamed(
              context,
              '/',
            ),
          ),
          
        ],
      ),
    );
  
  }
}