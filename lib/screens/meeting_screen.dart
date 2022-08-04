import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class MeetingScreen extends StatelessWidget {
  final AgoraClient _client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
        appId: "20e1c6275b0b4ed990d9b636aede1c40",
        channelName: "chat",
        tempToken:
            "00620e1c6275b0b4ed990d9b636aede1c40IABy/3SGhJyhZ/onsjWa/NZuYUNlWJej9cmkymT71vE+3KrynWUAAAAAEABUJOp9M3vtYgEAAQAze+1i",
      ),
      enabledPermission: [
        Permission.camera,
        Permission.microphone,
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          AgoraVideoViewer(client: _client),
          AgoraVideoButtons(client: _client)
        ]),
      ),
    );
  }
}
