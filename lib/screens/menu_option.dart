import 'package:flutter/material.dart';
import 'package:Menu_Options/model/options_model.dart';

class MenuOptionsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MenuOptionsScreenState();
  }
}

class MenuOptionsScreenState extends State<MenuOptionsScreen> {
  int _selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Menu Options',
          // textAlign: TextAlign.center,
        ),
        leading: FlatButton(
          onPressed: () => print('Back'),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          FlatButton(
            onPressed: () => print('Help'),
            child: Text(
              'HELP',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: options.length + 2,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return SizedBox(height: 15.0);
          } else if (index == options.length + 1) {
            return SizedBox(height: 100.0);
          }
          return Container(
            margin: EdgeInsets.all(10.0),
            height: 80.0,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0),
                border: _selectedOption == index - 1
                    ? Border.all(color: Colors.black)
                    : null),
            child: ListTile(
              leading: options[index - 1].icon,
              title: Text(
                options[index - 1].title,
                style: TextStyle(
                  color: _selectedOption == index - 1
                      ? Colors.black
                      : Colors.grey[600],
                ),
              ),
              subtitle: Text(
                options[index - 1].subtitle,
                style: TextStyle(
                    color: _selectedOption == index - 1
                        ? Colors.black
                        : Colors.grey),
              ),
              selected: _selectedOption == index - 1,
              onTap: () {
                setState(() {
                  print('${options[index - 1].title} is Pressed');
                  _selectedOption = index - 1;
                });
              },
            ),
          );
        },
      ),
      bottomSheet: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.only(right: 12.0),
        width: double.infinity,
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'SAVE AND NEXT',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
              size: 28.0,
            ),
          ],
        ),
      ),
    );
  }
}
