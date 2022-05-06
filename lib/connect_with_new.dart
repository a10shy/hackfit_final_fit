import 'package:fitify_flutter/core/friend_list.dart';
import 'package:fitify_flutter/services/web_services.dart';
import 'package:flutter/material.dart';

class ScreenConnect extends StatefulWidget {
  const ScreenConnect({
    Key? key,
  }) : super(key: key);

  @override
  State<ScreenConnect> createState() => _ScreenConnectState();
}

class _ScreenConnectState extends State<ScreenConnect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            // SizedBox(
            //   height: 10,
            // ),

            const Text(
              'For New Connection',
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              onPressed: () async {
                String response = await WebService.getOnline();
                // Navigator.pushNamed(context, '/videocall');
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Recently Saved Gym Buddies',
                  textScaleFactor: 1.15,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        print(StaticLists.friendList.elementAt(index).id);
                      },
                      title: Text(StaticLists.friendList.elementAt(index).name),
                      subtitle: Text(StaticLists.friendList
                          .elementAt(index)
                          .level
                          .toString()),
                    ),
                  );
                },
                itemCount: StaticLists.friendList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
