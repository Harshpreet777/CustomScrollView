import 'package:flutter/material.dart';

class WhatsAppBarClass extends StatefulWidget {
  const WhatsAppBarClass({super.key});

  @override
  State<WhatsAppBarClass> createState() => _WhatsAppBarClassState();
}

class _WhatsAppBarClassState extends State<WhatsAppBarClass> {
  var name = [
    'Harsh',
    'Singh',
    'Poonam',
    'Kashish',
    'Satyam',
    'Saksham',
    'Harsh',
    'Satyam',
    'Saksham',
    'Poonam',
    'Kashish',
    'Ayush',
    'Ankit',
    'Diksha',
    'Rohit'
  ];
  var images = [
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-136-116502.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-94-116460.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-39-116397.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-36-116394.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-37-116395.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-149-116517.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-136-116502.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-37-116395.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-94-116460.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-37-116395.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-36-116394.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-136-116502.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-39-116397.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-37-116395.png?f=webp&w=512',
    'https://cdn.iconscout.com/icon/premium/png-512-thumb/avatar-94-116460.png?f=webp&w=512',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 38, 47),
      body: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: CustomScrollView(
          scrollBehavior: const MaterialScrollBehavior(
              // ignore: deprecated_member_use
              androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
          slivers: [
             const SliverAppBar(
              floating: true,
              pinned: true,
              snap: true,
              backgroundColor: Color(0xff273443),
              // flexibleSpace: FlexibleSpaceBar(
              //   background: Row(
              //     children: [
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Text(
              //         'WhatsApp',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 25,
              //             fontWeight: FontWeight.w400),
              //       ),
              //     ],
              //   ),
              // ),
              title: Text(
                'WhatsApp',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
                  children: [
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                )
              ],
              bottom: TabBar(
                
                dividerColor: Colors.transparent,
                indicatorColor: Color(0xff25D366),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.groups_2,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Chats',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Updates',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Calls',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            // const SliverAppBar(
            //     pinned: true,
            //     primary: false,
            //     // backgroundColor: Color(0xff273443),
            //     backgroundColor: Colors.amber,
            //     bottom: TabBar(
            //       dividerColor: Colors.transparent,
            //       indicatorColor: Color(0xff25D366),
            //       indicatorSize: TabBarIndicatorSize.tab,
            //       indicatorWeight: 4,
            //       tabs: [
            //         Tab(
            //           icon: Icon(
            //             Icons.groups_2,
            //             color: Colors.grey,
            //             size: 30,
            //           ),
            //         ),
            //         Tab(
            //           child: Text(
            //             'Chats',
            //             style: TextStyle(
            //                 color: Colors.grey,
            //                 fontSize: 18,
            //                 fontWeight: FontWeight.w400),
            //           ),
            //         ),
            //         Tab(
            //           child: Text(
            //             'Updates',
            //             style: TextStyle(
            //                 color: Colors.grey,
            //                 fontSize: 18,
            //                 fontWeight: FontWeight.w400),
            //           ),
            //         ),
            //         Tab(
            //           child: Text(
            //             'Calls',
            //             style: TextStyle(
            //                 color: Colors.grey,
            //                 fontSize: 18,
            //                 fontWeight: FontWeight.w400),
            //           ),
            //         )
            //       ],
            //     )
            //     ),
            SliverList(
              
              delegate: SliverChildBuilderDelegate((context, index) {
                return ListTile(
                  minLeadingWidth: -10,
                  minVerticalPadding: 10,
                  subtitle: const Text('Message',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  title: Text(
                    name[index],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  leading: CircleAvatar(
                    backgroundColor:
                        (index % 2 == 0) ? Colors.blue : Colors.amber,
                    maxRadius: 50,
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  horizontalTitleGap: -5,
                );
              }, childCount: name.length),
            )
          ],
        ),
      ),
    );
  }
}
