import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:tabnews_flutter/presentation/providers/contents_provider.dart';

class PostDetails extends StatefulWidget {
  const PostDetails({super.key});

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    var param = ModalRoute.of(context)!.settings.arguments as List<String>;
    var contentProvider = context.read<ContentsProvider>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: FutureBuilder(
            future: contentProvider.getContentDetail(param[0], param[1]),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var contentInfo = snapshot.data;
                return Column(
                  children: [
                    Text("${contentInfo!.title}"),
                    Text("${contentInfo.ownerUsername}"),
                    Text("${contentInfo.createdAt}"),
                    Text("${contentInfo.body}")
                  ],
                );
              } else if (snapshot.hasError) {
                return Center(child: Text("ERROR: ${snapshot.error}"),);
              }
              return const Center(child: CircularProgressIndicator(),);
            },
            
          ),
        ),
      ),
    );
  }
}