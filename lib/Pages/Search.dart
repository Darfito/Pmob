import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomsSearchDelegate(),
                );
              },
              icon: const Icon(Icons.search))
        ],
      ),
    );
    // FutureBuilder(
    //   future: showSearch(context: context, delegate: CustomsSearchDelegate()),
    //   builder: (BuildContext context, snapshot) {
    //     if (snapshot.hasData) {
    //       return Text(snapshot.data);
    //     }
    //     return const Text('No');
    //   },
    // );
  }
}

class CustomsSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Jawa Tengah',
    'Jawa Timur',
    'Jawa Barat',
    'Bandung',
    'Jakarta',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var tempat in searchTerms) {
      if (tempat.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(tempat);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var tempat in searchTerms) {
      if (tempat.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(tempat);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
