import 'package:flutter/material.dart';

class DissmissDemo extends StatefulWidget {
  @override
  _DissmissDemoState createState() => _DissmissDemoState();
}

class _DissmissDemoState extends State<DissmissDemo> {
  List<String> users = [
    'Pratik',
    'Amit',
    'Satish',
    'Kran',
    'Rahul',
    'Kartik',
    'Prashik',
    'Sachin',
    'Pavan',
    'Nitesh',
    'Asit'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: UniqueKey(),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text(users[index]),
              subtitle: Text('Software Endgineer'),
            ),
            background: Container(
              color: Colors.red,
            ),
            onDismissed: (DismissDirection direction) {
              String deletedUser = users[index];

              setState(() {
                users.remove(users[index]);
              });

              SnackBar snackBar = SnackBar(
                content: Text('$deletedUser deleted'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    setState(() {
                      users.insert(index, deletedUser);
                    });
                  },
                ),
              );

              Scaffold.of(context).showSnackBar(snackBar);
            },
          );
        },
      ),
    );
  }
}
