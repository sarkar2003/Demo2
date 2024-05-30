import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Hompage extends StatefulWidget {
  const Hompage({Key? key}) : super(key: key);
  @override
  HompageState createState() => HompageState();
}

class HompageState extends State<Hompage> {
  ScrollController scrollController = ScrollController();
  TextEditingController searchcontroller = TextEditingController();

  int appbar_layout = 1;
  bool search = false;
  bool toggle = false;
  String searching = "";

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.pixels >
              MediaQuery.of(context).size.height * 0.24 &&
          appbar_layout == 1) {
        print("object");
        setState(() {
          appbar_layout = 2;
        });
      }
      if (scrollController.position.pixels <=
              MediaQuery.of(context).size.height * 0.24 &&
          appbar_layout == 2) {
        print("object");
        setState(() {
          appbar_layout = 1;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // SliverAppBar(
          //   floating: false,
          //   pinned: false,
          //   expandedHeight: MediaQuery.of(context).size.height * 0.3,
          //   stretchTriggerOffset: 3,
          //   onStretchTrigger: () async {
          //     ScaffoldMessenger.of(context)
          //         .showSnackBar(SnackBar(content: Text("data")));
          //     print("object");

          //     throw "error";
          //   },
          //   stretch: false,
          // FlexibleSpaceBar(
          //   background: Image(
          //     image: AssetImage('assets/img1.png'),
          //     fit: BoxFit.fill,
          //   ),
          // ),
          //     title: Container(
          //         color: Colors.red,
          //         width: MediaQuery.of(context).size.width,
          //         height: MediaQuery.of(context).size.height,
          //         child: OverflowBox()),
          //     centerTitle: false,
          //     // title: Text("data")
          //   ),
          // ),
          // CustomScrollView(
          //   controller: scrollController,
          //   slivers: [
          //     SliverAppBar(
          //       bottom: PreferredSize(
          //           preferredSize: Size(MediaQuery.of(context).size.width,
          //               MediaQuery.of(context).size.height * 0.1),
          //           child: Container()),
          //       // leading: Container(
          //       //   padding: EdgeInsets.zero,
          //       //   margin: EdgeInsets.zero,
          //       //   color: Colors.red,
          //       //   child: SizedBox(
          //       //       width: MediaQuery.of(context).size.width,
          //       //       height: MediaQuery.of(context).size.height),
          //       // ),
          //       floating: false,
          //       pinned: false,
          //       expandedHeight: MediaQuery.of(context).size.height * 0.3,
          //       stretchTriggerOffset: 3,
          //       onStretchTrigger: () async {
          //         ScaffoldMessenger.of(context)
          //             .showSnackBar(SnackBar(content: Text("data")));
          //         print("object");

          //         throw "error";
          //       },
          //       stretch: false,
          //       flexibleSpace: FlexibleSpaceBar(
          //         collapseMode: CollapseMode.none,
          //         background: Image(
          //           image: AssetImage('assets/img1.png'),
          //           fit: BoxFit.fill,
          //         ),

          //         centerTitle: false,
          //         // title: Text("data")
          //       ),
          //     ),
          //     SliverToBoxAdapter(
          //       child: Padding(
          //         padding: EdgeInsets.all(100),
          //         child: Container(),
          //       ),
          //     ),
          //     SliverList(
          //         delegate: SliverChildBuilderDelegate(childCount: 200,
          //             (BuildContext context, int index) {
          //       return Container(
          //         child: Text("hello"),
          //       );
          //     }))
          //   ],
          // ),

          Container(
            color: Color.fromARGB(255, 252, 250, 250),
            // color: appbar_layout == 1 ? Colors.transparent : Colors.white,
            // padding:
            //     EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35),
            child: ListView(
              controller: scrollController,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: Image(
                    image: AssetImage('assets/img1.png'),
                    fit: BoxFit.fill,
                  ),
                ),

                // Padding(
                //     padding: EdgeInsets.only(
                //         top: MediaQuery.of(context).size.height * 0.35)),

                //AppBar
                AnimatedContainer(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.1,
                    duration: Duration(milliseconds: 100),
                    curve: Curves.linear,
                    color: appbar_layout == 1
                        ? Colors.red
                        : Color.fromARGB(255, 252, 250, 250),
                    child: appbar_layout == 1
                        ? Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10.0, bottom: 10),
                                  child: Card(
                                    color: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(
                                            width: 1, color: Colors.white)),
                                    child: IconButton(
                                        onPressed: () {
                                          print("object");
                                        },
                                        icon: Icon(
                                          Icons.share_outlined,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10.0, top: 10),
                                child: Wrap(
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      "The weeknd",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                    Padding(padding: EdgeInsets.all(3)),
                                    Text(
                                      "Community. +11k Members",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        : Container()),

                Padding(padding: EdgeInsets.all(10)),
                Container(
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.white,
                  // height: MediaQuery.of(context).size.height * 0.1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 16),
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod vestibulum lacus, nec consequat nulla efficitur sit amet. Proin eu lorem libero. Sed id enim in urna tincidunt sodales. Vivamus vel semper ame..."),
                        TextSpan(
                            style: TextStyle(color: Colors.red),
                            text: " Read more")
                      ]),
                    ),
                  ),
                ),
                Wrap(
                  children: [
                    Padding(padding: EdgeInsets.all(1)),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(width: 1, color: Colors.red)),
                      child: Text(
                        "   Outdoor   ",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(width: 1, color: Colors.red)),
                      child: Text(
                        "   Outdoor   ",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(width: 1, color: Colors.red)),
                      child: Text(
                        "   Outdoor   ",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(width: 1, color: Colors.red)),
                      child: Text(
                        "   Outdoor   ",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(width: 1, color: Colors.red)),
                      child: Text(
                        "   +1   ",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),

                ListTile(
                  leading: Text(
                    "Media, docs and links",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right_outlined),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < 5; i++)
                        Padding(
                          padding: EdgeInsets.all(3),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              alignment: Alignment.centerRight,
                              width: MediaQuery.of(context).size.width * 0.28,
                              fit: BoxFit.fitHeight,
                              height: MediaQuery.of(context).size.height * 0.14,
                              image: AssetImage(
                                'assets/img1.png',
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ),

                ListTile(
                  leading: Text(
                    "Mute Notification ",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  trailing: Switch(
                      value: toggle,
                      inactiveTrackColor: Colors.white,
                      trackOutlineColor:
                          MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                        return Colors.white; // Use the default color.
                      }),
                      trackOutlineWidth:
                          MaterialStateProperty.resolveWith<double?>(
                              (Set<MaterialState> states) {
                        return 0;
                      }),
                      onChanged: (value) {
                        setState(() {
                          toggle = !toggle;
                        });
                      }),
                ),

                ListTile(
                    title: Text(
                      "Clear chat",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    leading: Image(
                        height: MediaQuery.of(context).size.height * 0.03,
                        image: AssetImage("assets/delete.jpg"))),

                ListTile(
                  title: Text(
                    "Encryption",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  leading: Icon(Icons.lock_outline),
                ),

                ListTile(
                  title: Text(
                    "Exit community",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                  leading: Image(
                      height: MediaQuery.of(context).size.height * 0.03,
                      image: AssetImage("assets/exit.jpg")),
                ),

                ListTile(
                  title: Text(
                    "Report",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                  leading: Image(
                      height: MediaQuery.of(context).size.height * 0.03,
                      image: AssetImage("assets/thumb_down.jpg")),
                ),

                search == false
                    ? ListTile(
                        trailing: GestureDetector(
                            onTapDown: (e) {
                              setState(() {
                                search = !search;
                                scrollController.animateTo(
                                    scrollController.position.pixels +
                                        e.globalPosition.dy -
                                        MediaQuery.of(context).size.width *
                                            0.26,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.linear);
                              });
                            },
                            child: Icon(Icons.search)),
                        leading: Text(
                          "Members",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      )
                    : ListTile(
                        trailing: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  search = !search;
                                  searching = "";
                                  searchcontroller.text = "";
                                });
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        leading: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: TextFormField(
                              controller: searchcontroller,
                              onChanged: (e) {
                                // print(searchcontroller.text);
                                setState(() {
                                  searching = searchcontroller.text;
                                });
                              },
                              decoration: InputDecoration(
                                  hintText: "Search Member",
                                  contentPadding: EdgeInsets.only(left: 10),
                                  disabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        )),

                ("Yashika".toLowerCase().contains(searching.toLowerCase()))
                    ? Members(
                        name: "Yashika",
                        choice: false,
                      )
                    : Container(),

                for (int i = 0; i < 12; i++)
                  ("Yashika".toLowerCase().contains(searching.toLowerCase()))
                      ? Members(
                          name: "Yashika",
                          choice: true,
                        )
                      : Container(),
              ],
            ),
          ),

          appbar_layout == 1
              ? Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.05,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(30)),
                  // color: Colors.black38,
                  child: Center(
                    child: IconButton(
                        onPressed: () {
                          print("object");
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                  ),
                )
              : Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.08,
                      color: Colors.red,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, right: 10.0),
                          child: Card(
                            color: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                    width: 0, color: Colors.transparent)),
                            child: IconButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          color: Colors.white,
                                          child: Wrap(
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.all(2)),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.black45,
                                                      shape: BoxShape.rectangle,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.3,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.005,
                                                  // color: Colors.amber,
                                                ),
                                              ),
                                              ListTile(
                                                leading: Icon(Icons.link),
                                                title: Text(
                                                  "Invite",
                                                ),
                                              ),
                                              ListTile(
                                                leading: Image(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.03,
                                                    image: AssetImage(
                                                        "assets/add_member.jpg")),
                                                title: Text(
                                                  "Add member",
                                                ),
                                              ),
                                              ListTile(
                                                leading: Image(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.03,
                                                    image: AssetImage(
                                                        "assets/add_group.jpg")),
                                                title: Text(
                                                  "Add Group",
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, right: 10.0, bottom: 10),
                        child: Card(
                          color: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  width: 1, color: Colors.transparent)),
                          child: Wrap(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    print("object");
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/img1.png"),
                                  // fit: BoxFit.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.3),
                      child: Wrap(
                        direction: Axis.vertical,
                        children: [
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            "The weeknd",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Padding(padding: EdgeInsets.all(1)),
                          Text(
                            "Community. +11k Members",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 10.0, top: 5),
                    //   child: Wrap(
                    //     direction: Axis.vertical,
                    //     children: [
                    //       Text(
                    //         "The weeknds",
                    //         style: TextStyle(color: Colors.white, fontSize: 24),
                    //       ),
                    //       Padding(padding: EdgeInsets.all(3)),
                    //       Text(
                    //         "Community. +11k Members",
                    //         style: TextStyle(color: Colors.white, fontSize: 16),
                    //       ),
                    //     ],
                    //   ),
                    // )
                  ],
                ),
        ],
      ),
    );
  }
}

class Members extends StatefulWidget {
  final name;
  final choice;
  const Members({Key? key, this.name, this.choice}) : super(key: key);
  @override
  MembersState createState() => MembersState();
}

class MembersState extends State<Members> {
  late bool to_add;
  @override
  void initState() {
    to_add = widget.choice;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        // direction: Axis.horizontal,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/img2.png"),
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Positioned(
            // alignment: Alignment.,
            left: MediaQuery.of(context).size.width * 0.14,
            child: Wrap(
              direction: Axis.vertical,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "29, India",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: to_add ? Color(0xffEF456F) : Colors.grey,
              child: Container(
                height: MediaQuery.of(context).size.width * 0.07,
                width: MediaQuery.of(context).size.width * 0.3,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      to_add = !to_add;
                    });
                  },
                  child: Center(
                    child: Text(
                      to_add ? "Add" : "Following",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
