import 'package:flutter/material.dart';

class ChannelsPage extends StatefulWidget {
  const ChannelsPage({super.key});

  @override
  State<ChannelsPage> createState() => _ChannelsPageState();
}

class _ChannelsPageState extends State<ChannelsPage> {
  final List<Map<String, String>> channels = [
    {
      'name': 'WhatsApp',
      'avatar': 'assets/images/channel1.jpeg',
    },
    {
      'name': 'English Hacks',
      'avatar': 'assets/images/channel2.jpeg',
    },
    {
      'name': 'TechTalk',
      'avatar': 'assets/images/channel3.jpeg',
    },
    {
      'name': 'Gaming Zone',
      'avatar': 'assets/images/channel4.jpeg',
    },
    {
      'name': 'Music Vibes',
      'avatar': 'assets/images/channel5.jpg',
    },
    {
      'name': 'Photography',
      'avatar': 'assets/images/channel6.jpeg',
    },
    {
      'name': 'Health Tips',
      'avatar': 'assets/images/channel7.jpeg',
    },
    {
      'name': 'Food Lovers',
      'avatar': 'assets/images/channel8.jpeg',
    },
    {
      'name': 'Travel Diaries',
      'avatar': 'assets/images/channel9.jpeg',
    },
    {
      'name': 'Fitness Guru',
      'avatar': 'assets/images/channel10.jpeg',
    },
    {
      'name': 'Cooking Corner',
      'avatar': 'assets/images/channel11.jpeg',
    },
    {
      'name': 'Daily News',
      'avatar': 'assets/images/channel12.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Cari saluran',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 kolom
                crossAxisSpacing: 30, // Jarak antar kolom
                mainAxisSpacing: 30, // Jarak antar baris
                childAspectRatio: 2, // Rasio aspek 1 untuk kotak yang simetris
              ),
              itemCount: channels.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(channels[index]
                                  ['avatar'] ??
                              'assets/images/avatar1.jpeg'),
                          radius: 40,
                        ),
                        Text(
                          channels[index]['name']!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print('Ikuti ${channels[index]['name']}');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[100],
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            'Ikuti',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
