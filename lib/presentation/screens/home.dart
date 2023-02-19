import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabnews_flutter/presentation/providers/contents_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> param = [];

  @override
  Widget build(BuildContext context) {
    var contentsprovider = context.read<ContentsProvider>();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      body: SafeArea(
        child: FutureBuilder(
          future: contentsprovider.getContents(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var contents = snapshot.data;
              return ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: contents!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      param.add(contents[index].ownerUsername!);
                      param.add(contents[index].slug!);
                      Navigator.pushNamed(context, ("/post_detail"), arguments: param);
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("${contents[index].ownerUsername}", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                            const SizedBox(height: 10,),
                            Text("${index + 1}.  ${contents[index].title}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("${contents[index].tabcoins} Tabcoins"),
                                const SizedBox(width: 25,),
                                Text("${contents[index].childrenDeepCount} Comentarios"),
                              ],
                            ),
                          ],
                        ),
                      )
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: Text("ERROR: ${snapshot.error}"),);
            }
            return const Center(child: CircularProgressIndicator(),);
          },
        ),
      ),
    );
  }
}