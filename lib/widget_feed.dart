import 'package:flutter/material.dart';

class FeedView extends StatelessWidget {
  final String _dummyAvatar =
      'https://i1.wp.com/butwhythopodcast.com/wp-content/uploads/2020/09/maxresdefault-28.jpg?fit=1280%2C720&ssl=1';
  final String _dummyImage =
      'https://melbournesportscentres.com.au/gym-wellness/wp-content/uploads/sites/6/2020/06/gym-book-a-class.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _postsListView()),
      //)
    );
  }

  Widget _postAuthorRow() {
    const double avatarDiameter = 44;
    return Row(children: [
      Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: avatarDiameter,
          height: avatarDiameter,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(avatarDiameter / 2),
            child: Image(
              image: NetworkImage(_dummyAvatar),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const Text(
        'Demo User',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      )
    ]);
  }

  Widget _postView() {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 60,
        ),
        _postAuthorRow(),
        _postCaption(),
        _postImage(),
        const SizedBox(
          height: 60,
        )
      ],
    );
  }

  Widget _postImage() {
    return AspectRatio(
      aspectRatio: 1,
      child: Image(
        image: NetworkImage(_dummyImage),
      ),
    );
  }

  Widget _postCaption() {
    return const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        child: Text('Hello, This is the Caption'));
  }

  Widget _postsListView() {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
              child: Column(children: [
            _postAuthorRow(),
            _postImage(),
            ListTile(
              leading: _postCaption(),
              trailing: IconButton(
                icon: const Icon(Icons.thumb_up_sharp),
                onPressed: () {},
              ),
            )
            // Icon(,
            //   Icons.heart_broken,
            //   color: Colors.red,
            //   size: 300,
            // )
          ]));
        });
  }
}
