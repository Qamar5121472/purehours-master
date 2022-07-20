import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';


class MeetingScreen extends StatelessWidget {

  final AgoraClient _client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: "20e1c6275b0b4ed990d9b636aede1c40", 
      channelName: "chat",
      tempToken: "00620e1c6275b0b4ed990d9b636aede1c40IAAF+X5M5ZSRRHCLNhZluG9r+Jrk/yob5oLEVoleMpLW4qrynWUAAAAAEAArT8zLFta7YgEAAQAU1rti",
      ),
      enabledPermission: [
        Permission.camera,
        Permission.microphone,
      ]
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: SafeArea(
        child: Stack(
          children: [
            AgoraVideoViewer(
            client: _client
            ),
            AgoraVideoButtons(client: _client)
            ]
        ),
      ),
    );
  }
}