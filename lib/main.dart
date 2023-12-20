import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var myList = List.generate(50, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Scaffold AppBar'),
        ),
        body: CustomScrollView(
          scrollBehavior: const ScrollBehavior(
              // ignore: deprecated_member_use
              androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
          slivers: [
            const SliverAppBar(
              floating: true,
              snap: false,
              title: Text('Floating True',
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              backgroundColor: Colors.blue,
            ),
            const  SliverAppBar(
              snap: true,
              floating: true,
              title:  Text('Snap True',
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              backgroundColor: Colors.orange,
            ),
            // const SliverAppBar(
            //   stretch: true,
              
            //   elevation: 30,
            //   shadowColor: Colors.black,
            //   pinned: true,
            //   title: Text('Pinned True',
            //       style: TextStyle(color: Colors.white, fontSize: 25)),
            //   backgroundColor: Colors.amber,
            // ),
            SliverPadding(
              padding: const EdgeInsets.all(30),
              sliver: SliverList.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      FloatingActionButton(
                        backgroundColor:
                            (index % 2 == 0) ? Colors.orange : Colors.blue,
                        onPressed: null,
                        child: Text(
                          myList[index].toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 25),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      )
                    ],
                  );
                },
              ),
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        color: (index % 2 == 0) ? Colors.amber : Colors.blue,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              myList[index].toString(),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 25),
                            ))),
                  );
                }, childCount: 50),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10)),
            SliverFillRemaining(
              child: Image.network(
                'https://cdn.iconscout.com/icon/free/png-512/free-batman-dc-superhero-hero-justice-league-earth-saver-28695.png?f=webp&w=512',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ));
  }
}
