import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final List<Map<String, String>> chats = [
    {
      'name': 'Ibu',
      'message': 'Jangan lupa sarapan, ya.',
      'time': '10:30 AM',
      'avatar': 'assets/images/avatar1.jpg',
    },
    {
      'name': 'Ayah',
      'message': 'Ok.',
      'time': '09:15 AM',
      'avatar': 'assets/images/avatar2.jpg',
    },
    {
      'name': 'Koukai',
      'message': 'Tutorial uninstall stiker',
      'time': 'Yesterday',
      'avatar': 'assets/images/avatar3.jpg',
    },
    {
      'name': 'Heraa',
      'message': 'Udah aku ganti cin',
      'time': 'Yesterday',
      'avatar': 'assets/images/avatar4.jpg',
    },
    {
      'name': 'Nur Salamah',
      'message': 'Setelah aku selesai ngajar',
      'time': '2 days ago',
      'avatar': 'assets/images/avatar5.jpg',
    },
    {
      'name': 'Pak Purwanto',
      'message': 'Baik, Pak.',
      'time': '3 days ago',
      'avatar': 'assets/images/avatar6.jpg',
    },
    {
      'name': 'Putri Fisichella',
      'message': 'Okee, makasii ya',
      'time': '4 days ago',
      'avatar': 'assets/images/avatar7.jpg',
    },
    {
      'name': 'Teh Riska',
      'message': 'Aman dek',
      'time': '5 days ago',
      'avatar': 'assets/images/avatar8.jpg',
    },
    {
      'name': 'Wawaa',
      'message': 'Tas nya masih ada',
      'time': '6 days ago',
      'avatar': 'assets/images/avatar9.jpg',
    },
    {
      'name': 'Rachel Muthia',
      'message': 'Siappp',
      'time': 'Last week',
      'avatar': 'assets/images/avatar10.jpg',
    },
    {
      'name': 'Nabilla Pasha',
      'message': 'Alhamdulillah udah baikann',
      'time': 'Last week',
      'avatar': 'assets/images/avatar11.jpg',
    },
    {
      'name': 'Aufaa',
      'message': 'Aamiin, makasih banyak yaa',
      'time': 'Last week',
      'avatar': 'assets/images/avatar12.jpg',
    },
    {
      'name': 'Shelma Aulia',
      'message': 'Iya aku udah bikin proposal juga',
      'time': 'Last week',
      'avatar': 'assets/images/avatar13.jpg',
    },
    {
      'name': 'Kerin',
      'message': 'Stiker',
      'time': 'Last month',
      'avatar': 'assets/images/avatar14.jpg',
    },
    {
      'name': 'Ericaa',
      'message': 'Okayyy',
      'time': 'Last month',
      'avatar': 'assets/images/avatar15.jpg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
                chats[index]['avatar'] ?? 'assets/images/avatar1.jpg'),
            radius: 25,
          ),
          title: Text(
            chats[index]['name']!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            chats[index]['message']!,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          trailing: Text(
            chats[index]['time']!,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          onTap: () {
            print('Chat dengan ${chats[index]['name']} diklik');
          },
        );
      },
    );
  }
}
