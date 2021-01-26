import 'package:flutter/material.dart';
import 'package:sejuta_relasi/common/navigation.dart';
import 'package:sejuta_relasi/ui/chat_page.dart';
import 'package:sejuta_relasi/ui/welcome_page.dart';

class HomePage extends StatefulWidget {
  static const String name = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'SejutaRelasi',
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () => Navigation.pushAndRemove(WelcomePage.name),
          )
        ],
      ),
      floatingActionButton: MaterialButton(
        child: Icon(Icons.add),
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.zero,
        minWidth: 60,
        height: 60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        textTheme: ButtonTextTheme.primary,
        onPressed: () {},
      ),
      body: ListView.builder(
        itemCount: 8,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            child: ListTile(
              onTap: () => Navigation.navigate(ChatPage.name),
              tileColor: Colors.grey[300],
              title: Text(
                'Dayana',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Halo, Selamat Siang',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          );
        },
      ),
    );
  }
}
