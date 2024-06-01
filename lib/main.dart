import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        fontFamily: 'ProximaNova',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<bool> follows = List.generate(15, (index) => false);
  bool light = false;
  bool search = false;
  bool collasped = false;
  String text =
      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. ";
  List<Widget> widgetlist = [];

  late ScrollController _scrollController;
  bool _isAppBarCollapsed = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.hasClients) {
      // Calculate the app bar's expanded height
      final appBarHeight = 200.0;
      // Determine if the app bar is collapsed
      bool isCollapsed =
          _scrollController.offset > (appBarHeight - kToolbarHeight);
      if (isCollapsed != _isAppBarCollapsed) {
        setState(() {
          _isAppBarCollapsed = isCollapsed;
        });
      }
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widgetlist = [
      Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ReadMoreText(
          text,
          trimLines: 2,
          colorClickableText: const Color.fromARGB(255, 239, 69, 112),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 1),
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: const Color.fromARGB(255, 239, 69, 112)),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Text(
                "Outdoor",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 239, 69, 112)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 1),
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: const Color.fromARGB(255, 239, 69, 112)),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Text(
                "Outdoor",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 239, 69, 112)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 1),
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: const Color.fromARGB(255, 239, 69, 112)),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Text(
                "Outdoor",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 239, 69, 112)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 1),
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: const Color.fromARGB(255, 239, 69, 112)),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Text(
                "Outdoor",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 239, 69, 112)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 1),
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: const Color.fromARGB(255, 239, 69, 112)),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Text(
                "+1",
                style: TextStyle(
                    fontSize: 12, color: Color.fromARGB(255, 239, 69, 112)),
              ),
            ),
          ),
        ],
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Media, docs and links",
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Colors.black,
          )
        ],
      ),
    ];

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              bottom: AppBar(
                backgroundColor: const Color.fromARGB(255, 195, 37, 34),
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _isAppBarCollapsed
                        ? Container(
                            margin:
                                const EdgeInsets.only(right: 15, bottom: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.7),
                            ),
                            child: const Icon(Icons.arrow_back,
                                color: Colors.white),
                          )
                        : const SizedBox(),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 6),
                          child: Text("The weeknd",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white)),
                        ),
                        Text("Community • +11K Members",
                            style:
                                TextStyle(fontSize: 12, color: Colors.white)),
                      ],
                    ),
                    const Spacer(),
                    _isAppBarCollapsed
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                          height: screenHeight * 0.2,
                                          width: screenWidth,
                                          color: const Color.fromARGB(255, 255, 255, 255),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const ListTile(
                                                title: Row(
                                                  children: [Icon(Icons.link),Padding(
                                                    padding: EdgeInsets.only(left: 10),
                                                    child: Text("Invite",style: TextStyle(fontSize: 17),),
                                                  )],
                                                ),
                                              ),
                                              ListTile(
                                                title: Row(
                                                  children: [Image.asset("asset/add.jpeg" , height: 30,width: 30,),const Padding(
                                                    padding: EdgeInsets.only(left: 10),
                                                    child: Text("Add member",style: TextStyle(fontSize: 17),),
                                                  )],
                                                ),
                                              ),
                                              ListTile(
                                                title: Row(
                                                  children: [Image.asset("asset/add_grp.jpeg", height: 30,width: 30,),const Padding(
                                                    padding: EdgeInsets.only(left: 10),
                                                    child: Text("Add group",style: TextStyle(fontSize: 17),),
                                                  )],
                                                ),
                                              )
                                            ],
                                          ));
                                    });
                              });
                            },
                            icon: const Icon(Icons.more_vert))
                        : Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(Icons.share_outlined,
                                size: 15, color: Colors.white))
                  ],
                ),
              ),
              leading: Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.7),
                ),
                child: const Icon(Icons.arrow_back, color: Colors.white),
              ),
              pinned: true,
              floating: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  height: 500,
                  width: 600,
                  'asset/weekend.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: widgetlist[index],
                );
              },
              childCount: 3,
            )),
            SliverToBoxAdapter(
              child: ListTile(
                title: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    for (var i = 0; i < 4; i++) ...[
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Container(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'asset/weekend.jpeg',
                            height: 100,
                            width: 100,
                            fit: BoxFit.fitHeight,
                          ),
                        )),
                      ),
                    ],
                  ]),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Mute Notifications",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    CupertinoSwitch(
                        value: light,
                        activeColor: const Color.fromARGB(255, 195, 37, 34),
                        onChanged: (bool? value) {
                          setState(() {
                            light = value ?? false;
                          });
                        })
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Row(children: [
                Image.asset("asset/delete.jpeg", scale: 2),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Clear Chat",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                )
              ]),
            )),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Row(children: [
                  Image.asset("asset/lock.jpeg", scale: 2),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Encryption",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        )),
                  )
                ]),
              ),
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Row(children: [
                Image.asset("asset/exit.jpeg", scale: 2),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Exit Community",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 195, 37, 34))),
                )
              ]),
            )),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Row(children: [
                Image.asset("asset/thumbdown.jpeg", scale: 2),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Report",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 195, 37, 34))),
                )
              ]),
            )),
            SliverToBoxAdapter(
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    search
                        ? Expanded(
                            child: Container(
                                padding: const EdgeInsets.only(left: 10),
                                margin:
                                    const EdgeInsets.only(right: 10, top: 10),
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 233, 233, 235),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const TextField(
                                  autofocus: true,
                                  decoration: InputDecoration(
                                      hintText: "Search Members",
                                      border: InputBorder.none),
                                )),
                          )
                        : const Text(
                            "Members",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                    search
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                search = !search;
                              });
                            },
                            child: Container(
                                child: const Text(
                              "cancel",
                              style: TextStyle(color: Colors.black),
                            )),
                          )
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                search = !search;
                              });
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 233, 233, 235),
                              ),
                              child: const Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 35,
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Row(children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("asset/pro.jpeg"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text(
                            "Yashika",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          Text("29, India",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 73, 73, 73)))
                        ],
                      ),
                    ),
                    const Expanded(child: Text("")),
                    follows[index]
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                follows[index] = !follows[index];
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 4, bottom: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey),
                              child: const Text(
                                "Following",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                follows[index] = !follows[index];
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 4, bottom: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 239, 69, 112)),
                              child: const Text(
                                "Add",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                  ]),
                );
              },
              childCount: 15,
            )),
          ],
        ),
      ),
    );
  }
}
