import 'package:flutter/material.dart';

import 'contact_page.dart';
import 'events_page.dart';
import 'notes_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/drawer.jpeg'), fit: BoxFit.cover)),
            child: Align(
              alignment: FractionalOffset.bottomLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  "Flutter Step-by-Step",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: Text("Contacts"),
            leading: IconButton(
              icon: Icon(Icons.contact_mail),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) => ContactPage()));
            },
          ),
          ListTile(
            title: Text("Events"),
            leading: IconButton(
              icon: Icon(Icons.event),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) => EventsPage()));
            },
          ),
          ListTile(
            title: const Text("Notes"),
            leading: IconButton(
              icon: const Icon(Icons.note),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) => NotesPage()));
            },
          ),
          Divider(),
          ListTile(
            title: const Text("Steps"),
            leading: IconButton(
              icon: const Icon(Icons.stacked_bar_chart),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text("Authors"),
            leading: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text("Flutter Documentation"),
            leading: IconButton(
              icon: const Icon(Icons.book),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text("Useful Links"),
            leading: IconButton(
              icon: const Icon(Icons.star),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          Divider(),
          ListTile(
            title: const Text("Report an issue"),
            leading: IconButton(
              icon: const Icon(Icons.bug_report),
              onPressed: () {},
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      )),
    );
  }
}
