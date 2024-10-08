import 'package:flutter/material.dart';
import './chats.dart' as chats;
import './channels.dart' as channels;
import './profile.dart' as profile;

void main() {
  runApp(MyElegantApp());
}

class MyElegantApp extends StatelessWidget {
  const MyElegantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlowChat',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
        hintColor: Colors.amber,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlowChat', style: TextStyle(color: Colors.amber)),
        backgroundColor: Colors.blueGrey[900],
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.amber),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.amber),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.chat, color: Colors.amber), text: 'Chat'),
            Tab(
                icon: Icon(Icons.settings_input_antenna, color: Colors.amber),
                text: 'Channel'),
            Tab(icon: Icon(Icons.person, color: Colors.amber), text: 'Profile'),
          ],
          indicatorColor: Colors.amber,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          chats.ChatsPage(),
          channels.ChannelsPage(),
          profile.ProfilePage(),
        ],
      ),
    );
  }
}
