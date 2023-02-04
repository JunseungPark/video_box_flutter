import 'package:flutter/material.dart';
import 'package:video_box/components/Knowledge/knowledge_master.dart';
import 'package:video_box/layout/pop_content_layout.dart';

class KnowledgeScreen extends StatelessWidget {
  const KnowledgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PopContentLayout(
      title: 'Knowledge Storage',
      child: KnowledgeMaster(),
    );
  }
}
