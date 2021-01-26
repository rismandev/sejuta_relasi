import 'package:flutter/material.dart';
import 'package:sejuta_relasi/common/navigation.dart';
import 'package:sejuta_relasi/ui/home_page.dart';
import 'package:sejuta_relasi/widgets/button/primary.dart';

class RegisterPage extends StatefulWidget {
  static const String name = 'register_page';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscureText = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
              'Mari buat akun anda!',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Theme.of(context).primaryColor),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 5, 40, 15),
            child: TextField(
              controller: _nameController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Nama Lengkap',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 5, 40, 15),
            child: TextField(
              controller: _usernameController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Kata Pengguna',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 5, 40, 15),
            child: TextField(
              controller: _passwordController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                hintText: 'Kata Sandi',
              ),
            ),
          ),
          _isLoading
              ? Center(child: CircularProgressIndicator())
              : PrimaryButton(
                  text: 'Daftar',
                  onPressed: () => Navigation.pushAndRemove(HomePage.name),
                ),
        ],
      ),
    );
  }
}
