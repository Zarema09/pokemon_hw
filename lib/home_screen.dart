import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'details_screen.dart';
import 'bloc/main_bloc.dart';
import 'model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MainBloc bloc = MainBloc()..add(GetHarryDataEvent());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<MainBloc, MainState>(
                bloc: bloc,
                builder: (context, state) {
                  if (state is SuccessLoaded) {
                    final responseList = state.list;
                    return ListView.separated(
                      separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: Divider(
                          height: 10,
                          thickness: 2,
                          color: Colors.green,
                        ),
                      ),
                      itemBuilder: (context, index) {
                        final item = responseList[index];
                        return ListTile(
                          title: Text(
                            item.fullName,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            item.hogwartsHouse,
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          leading: Image.network(item.image, width: 50, height: 50),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(character: item),
                              ),
                            );
                          },
                        );
                      },
                      itemCount: responseList.length,
                    );
                  } else if (state is DataLoading) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return Center(child: Text("Ошибка загрузки данных"));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}