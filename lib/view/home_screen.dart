import 'package:api_call_with_rx_dart/bloc/demo_bloc.dart';
import 'package:api_call_with_rx_dart/model/demo_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DemoBloc demoBloc = DemoBloc();

  @override
  void initState() {
    fetchDEMo();
    super.initState();
  }

  fetchDEMo() async {
    await demoBloc.demoSink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<ApiResponseModel>(
        stream: demoBloc.demoStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("${snapshot.data?.data.data.moreApp[1].active}"),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data?.data.data.moreApp.length,
                    itemBuilder: (context, i) {
                      return Text(
                          "${snapshot.data?.data.data.keyword.privacy}");
                    },
                  ),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
