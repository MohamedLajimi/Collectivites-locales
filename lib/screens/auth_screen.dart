import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  void _initializeTabController() {
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void initState() {
    super.initState();
    _initializeTabController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.7,
          width: MediaQuery.sizeOf(context).width * 0.7,
          child: Card(
            elevation: 2,
            color: Colors.grey.shade300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TabBar(controller: _tabController, tabs: [
                  Tab(
                    child: Text('تسجيل دخول'),
                  ),
                  Tab(
                    child: Text('انشاء حساب'),
                  ),
                ]),
                SizedBox(
                  height: 600,
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  child: TabBarView(
                      controller: _tabController,
                      children: [Text('Login'), Text('Signup')]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
