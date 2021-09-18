import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 200.0),
        child: Column(
          children: [
            CustomAppBar(),
            Landing(),
            SubLanding(),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            // color: Colors.red,
            child: Image.asset(
              'assets/images/lsu_logo.png',
              // 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
              height: 100.0,
              width: 100.0,
              // fit: BoxFit.cover,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              _buildTextPage('Product Center'),
              _buildTextPage('Fund Stock'),
              _buildTextPage('Investment'),
              _buildTextPage('About Us'),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTextPage(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          letterSpacing: 0.75,
        ),
      ),
    );
  }
}

class Landing extends StatelessWidget {
  static const String loremIpsum =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 35,
            child: _buildLeft(context),
          ),
          Expanded(
            flex: 65,
            child: _buildRight(),
          ),
        ],
      ),
    );
  }

  Widget _buildLeft(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'BEGINNER\nINVESTMENT\nCOURSE',
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.75,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            loremIpsum,
            style:
                Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18.0),
          )
        ],
      ),
    );
  }

  Widget _buildRight() {
    return Image.asset('assets/images/setup_analysis.png');
  }
}

class SubLanding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          _buildDots(context),
          Spacer(),
          Text(
            'ONLINE SERVICE',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              letterSpacing: 0.75,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDots(BuildContext context) {
    return Row(
      children: [
        _buildDot(context, true),
        const SizedBox(width: 10.0),
        _buildDot(context, false),
        const SizedBox(width: 10.0),
        _buildDot(context, false),
      ],
    );
  }

  Widget _buildDot(BuildContext context, bool filled) {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Theme.of(context).primaryColor),
        color: filled ? Theme.of(context).primaryColor : Colors.white,
      ),
    );
  }
}
