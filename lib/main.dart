import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kaspiGoldImageUrl =
    "https://thumb.tildacdn.com/tild3163-3065-4835-b539-336464326462/-/resize/560x/-/format/webp/Kaspi.png";

const avatarUrl =
    "https://cdn-res.keymedia.com/cms/images/us/026/0222_637049384911763251.JPG";

void main() {
  runApp(KaspiBankApp());
}

class KaspiBankApp extends StatefulWidget {
  @override
  State<KaspiBankApp> createState() => _KaspiBankAppState();
}

class _KaspiBankAppState extends State<KaspiBankApp>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          elevation: 3,
          shadowColor: Colors.black.withOpacity(0.4),
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          title: const Text(
            "Клиенту Kaspi",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              padding: const EdgeInsets.only(
                right: 14,
              ),
              height: 70,
              child: Stack(
                children: [
                  Container(
                    color: Colors.white,
                    height: 60,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Image.network(kaspiGoldImageUrl),
                        ),
                        const Text(
                          "Kaspi Gold",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        const Text(
                          "178 876 ₸",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black38),
                        ),
                        child: const Icon(
                          Icons.keyboard_arrow_down_sharp,
                          size: 20,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 100,
              margin: const EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.red,
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.black,
                    labelPadding: const EdgeInsets.all(12),
                    tabs: const [
                      Text("ТЕЛЕФОН"),
                      Text("КАРТА"),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: "Номер полячателя",
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              suffixIcon: Icon(
                                Icons.person_pin,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Text("Card"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(14),
              color: Colors.white,
              child: const Center(
                child: IntrinsicWidth(
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      border: InputBorder.none,
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "₸",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Сообщения получателия",
                        labelStyle: const TextStyle(
                          color: Colors.black26,
                          fontSize: 14,
                        ),
                        contentPadding: const EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(avatarUrl),
                  ),
                ),
              ],
            ),
            Container(
              height: 23,
              margin: const EdgeInsets.only(left: 14),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black12),
                    ),
                    padding: const EdgeInsets.only(left: 3, right: 3),
                    child: const Text("Рахмет!"),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black12),
                    ),
                    padding: const EdgeInsets.only(left: 3, right: 3),
                    child: const Text("За обед"),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black12),
                    ),
                    padding: const EdgeInsets.only(left: 3, right: 3),
                    child: const Text("Возвращаю :)"),
                  ),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Комиссия 0 ₸",
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: MaterialButton(
                elevation: 3,
                height: 50,
                color: Colors.blueAccent,
                minWidth: double.infinity,
                textColor: Colors.white,
                onPressed: () {},
                child: const Text("ПЕРЕВЕСТИ"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
