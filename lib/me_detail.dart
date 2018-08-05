import 'dart:ui' as ui;

import 'package:aboutme/models.dart';
import 'package:aboutme/video_card.dart';
import 'package:flutter/material.dart';

class MeDetail extends StatelessWidget {
  MeDetail(this.me);
  final Me me;

  Widget _buildContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildAvatar(),
          _buildInfo(),
          _buildVideoScroller(),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 110.0,
      height: 110.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white30),
      ),
      margin: const EdgeInsets.only(top: 32.0, left: 16.0),
      padding: const EdgeInsets.all(3.0),
      child: ClipOval(
        child: Image.asset(me.avatar),
      ),
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            me.firstName + '\n' + me.lastName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          Text(
            me.location,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.85),
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            width: 225.0,
            height: 1.0,
          ),
          Text(
            me.biography,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoScroller() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox.fromSize(
        size: Size.fromHeight(245.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          itemCount: me.videos.length,
          itemBuilder: (BuildContext context, int index) {
            var video = me.videos[index];
            return VideoCard(video);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(me.backdropPhoto, fit: BoxFit.cover),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: _buildContent(),
            ),
          ),
        ],
      ),
    );
  }
}
