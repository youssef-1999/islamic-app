import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islamy_app/common/app_colors.dart';
import 'package:islamy_app/gen/assets.gen.dart';
import 'package:islamy_app/models/sura_model.dart';

class SuraScreenDetails extends StatelessWidget {
  const SuraScreenDetails({super.key});
  static const routeName = '/SuraScreenDetails';
// future tells the dart to run the app and it will read the file and displays the data nonstop the app 
  Future<List<String>> _loadAyas(String suraId) async {
    final content = await rootBundle.loadString('assets/suras/$suraId.txt');
    return content
        .split('\n')
        .map((line) => line.trim())
        .where((line) => line.isNotEmpty)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
   SuraModel suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        title: Text(suraModel.suraNameEn,style: TextStyle(color: AppColors.goldColor),),
        centerTitle: true,
       ),
       body:Padding(
         padding: const EdgeInsets.all(20),
         child: Container(
          
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.suraDetailsScreen.path),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: .stretch,
            spacing: 20,
            children: [
            Center(child: Text(suraModel.suraNameAr,style: TextStyle(color: AppColors.goldColor,fontSize: 20,fontWeight: FontWeight.bold))),
            Expanded(
              child: FutureBuilder<List<String>>(
                future: _loadAyas(suraModel.id),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(color: AppColors.goldColor),
                    );
                  }
                  final ayas = snapshot.data!;
                  return ListView.builder(
                    itemCount: ayas.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        '${ayas[index]} (${index + 1})',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.goldColor, fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
            ),
          ]),
         ),
       ) ,
    );
  }
}