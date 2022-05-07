import 'dart:async';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;

const tokenID =
    "006db87048a09204410be115ae75fae62ddIABj9IbxvK5Zmgr/sxERJYbpEAtOOcZviFyhftiFohmigAWaaEIAAAAAEAAoVXS2ywt3YgEAAQDkC3di";
const appID = "db87048a09204410be115ae75fae62dd";

class VideoApp extends StatefulWidget {
  const VideoApp({Key? key}) : super(key: key);

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  int? _remoteUid;
  late RtcEngine _engine;
  bool localUserJoined = false;

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  @override
  void dispose() {
    _engine.leaveChannel();
    _engine.destroy();
    localUserJoined = false;
    super.dispose();
  }

  Future<void> initAgora() async {
    await [Permission.microphone, Permission.camera].request();

    _engine = await RtcEngine.create(appID);
    await _engine.enableVideo();
    _engine.setEventHandler(
      RtcEngineEventHandler(
        joinChannelSuccess: (String channel, int uid, int elapsed) {
          print("local user $uid joined");
          setState(() {
            localUserJoined = true;
            _remoteUid = uid;
          });
        },
        userJoined: (int uid, int elapsed) {
          print("remote user $uid joined");
          setState(() {
            _remoteUid = uid;
          });
        },
        userOffline: (int uid, UserOfflineReason reason) {
          print("remote user $uid left channel");
          setState(() {
            _remoteUid = null;
          });
        },
      ),
    );

    await _engine.joinChannel(tokenID, "fitify", null, 0);
  }

  // Create UI with local view and remote view
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GymBuddy'),
      ),
      body: Stack(
        children: [
          Center(
            child: _remoteVideo(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 100,
              height: 100,
              child: Center(child: _renderLocalPreview()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderLocalPreview() {
    if (localUserJoined) {
      return RtcLocalView.SurfaceView();
    } else {
      return Text(
        'Joining Channel, Please wait.....',
        textAlign: TextAlign.center,
      );
    }
  }

  // Display remote user's video
  Widget _remoteVideo() {
    if (_remoteUid != null) {
      return RtcRemoteView.SurfaceView(
        uid: _remoteUid!,
        channelId: "fitify",
      );
    } else {
      return Text(
        'Please wait for remote user to join',
        textAlign: TextAlign.center,
      );
    }
  }
}
