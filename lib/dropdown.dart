import 'package:flutter/material.dart';

class PantallaCinco extends StatelessWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            'Pantalla 5',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: const MyDropDownNPopupMenu(),
    );
  }
}

class MyDropDownNPopupMenu extends StatefulWidget {
  const MyDropDownNPopupMenu({Key? key}) : super(key: key);

  @override
  _MyDropDownNPopupMenuState createState() => _MyDropDownNPopupMenuState();
}

class _MyDropDownNPopupMenuState extends State<MyDropDownNPopupMenu> {
  final _currencies = [
    'Taka (৳)',
    'Dollar (\$)',
    'Euro (€)',
    'Pounds (£)',
    'Yen (¥)',
    'Others',
  ];
  String _currentItemSelected = 'Taka (৳)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text('Dropdown & PopupMenu'),
        actions: [
          PopupMenuButton<int>(
            icon: const Icon(Icons.arrow_drop_down_circle),
            onSelected: (item) => onSelected(context, item),
            offset: const Offset(0, 50), // Corregido el offset
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Row(
                  children: const [
                    Icon(Icons.settings, color: Colors.black38),
                    SizedBox(width: 4.0),
                    Text('Settings'),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Row(
                  children: const [
                    Icon(Icons.share, color: Colors.black38),
                    SizedBox(width: 4.0),
                    Text('Share'),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 2,
                child: Row(
                  children: const [
                    Icon(Icons.logout, color: Colors.black38),
                    SizedBox(width: 4.0),
                    Text('Sign Out'),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const ListTile(
                title: Text('Click on the menu button on AppBar'),
                trailing: Icon(Icons.arrow_upward_rounded),
              ),
            ),
            const SizedBox(height: 20),
            _buildDropdownButton(),
          ],
        ),
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        _showPage(context, 'Settings Page');
        break;
      case 1:
        _showPage(context, 'Share Page');
        break;
      case 2:
        _showPage(context, 'Sign In Page');
        break;
    }
  }

  void _showPage(BuildContext context, String pageName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: Text(pageName)),
          body: Center(child: Text('This is the $pageName')),
        ),
      ),
    );
  }

  Widget _buildDropdownButton() {
    return Container(
      height: 70,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: const Text(
          'Select the currency: ',
          style: TextStyle(fontSize: 18),
        ),
        title: DropdownButton<String>(
          items: _currencies.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _currentItemSelected = newValue!;
            });
          },
          value: _currentItemSelected,
          underline: Container(),
          isExpanded: true,
        ),
      ),
    );
  }
}
