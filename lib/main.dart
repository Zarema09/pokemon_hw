import 'package:flutter/material.dart';
import 'api_service.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akatsuki Members',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AkatsukiListScreen(),
    );
  }
}

class AkatsukiListScreen extends StatefulWidget {
  @override
  _AkatsukiListScreenState createState() => _AkatsukiListScreenState();
}

class _AkatsukiListScreenState extends State<AkatsukiListScreen> {
  late Future<List<dynamic>> _futureData;

  @override
  void initState() {
    super.initState();
    _futureData = ApiService().fetchAkatsukiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akatsuki Members'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _futureData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No data available'));
          }

          final data = snapshot.data!;

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var member = data[index];
              var name = member['name'];
              var imageUrl = member['image'];

              return Card(
                margin: EdgeInsets.all(10),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
                  title: Text(name),
                  leading: CachedNetworkImage(
                    imageUrl: imageUrl,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
