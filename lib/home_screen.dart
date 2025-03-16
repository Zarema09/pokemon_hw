import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/main_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = MainBloc()..add(GetHarryDataEvent());

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
                          thickness: 20,
                          color: Colors.green,
                        ),
                      ),
                      itemBuilder: (context, index) {
                        final item = responseList[index];
                        return Column(
                          children: [
                            Text(
                              item.fullName,
                              style: TextStyle(fontSize: 40),
                            ),
                            Text(
                              item.hogwartsHouse,
                              style: TextStyle(fontSize: 40),
                            ),
                            Image.network(item.image),
                          ],
                        );
                      },
                      itemCount: responseList.length,
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
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