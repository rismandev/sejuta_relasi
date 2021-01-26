import 'package:flutter/material.dart';
import 'package:sejuta_relasi/common/navigation.dart';
import 'package:sejuta_relasi/ui/login_page.dart';
import 'package:sejuta_relasi/ui/register_page.dart';
import 'package:sejuta_relasi/widgets/button/primary.dart';
import 'package:sejuta_relasi/widgets/button/secondary.dart';

class WelcomePage extends StatelessWidget {
  static const String name = 'welcome_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            child: Text(
              'SejutaRelasi',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 30),
            child: Text(
              'Selamat Datang!',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Theme.of(context).primaryColor),
            ),
          ),
          PrimaryButton(
            text: 'Masuk',
            onPressed: () => Navigation.navigate(LoginPage.name),
          ),
          SecondaryButton(
            text: 'Daftar',
            onPressed: () => Navigation.navigate(RegisterPage.name),
          ),
        ],
      ),
    );
  }
}
