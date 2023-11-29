import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyChWQjbl7EMmzs4aaxi8340ItycVal_MsQ",
          appId: "1:949109276122:android:2d3a95ea305c18420114e3",
          messagingSenderId: "",
          projectId: "flutter-projet-f1172",
          storageBucket: "flutter-projet-f1172.appspot.com"));
  runApp(MaterialApp(
    home: Fire_Storage(),
  ));
}

class Fire_Storage extends StatefulWidget {
  const Fire_Storage({super.key});

  @override
  State<Fire_Storage> createState() => _Fire_StorageState();
}

class _Fire_StorageState extends State<Fire_Storage> {
  //when object is created  to firebase =>firbasestorage = storage
  final FirebaseStorage storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Access to camera"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  height: 40,
                  minWidth: 150,
                  color: Colors.green,
                  onPressed: () => upload("Camera"),
                  child: Text("Camera"),
                ),
              ],
            ),
            Expanded(
                child:
                FutureBuilder(
                    future: loadData(),
                    builder: (context,
                        AsyncSnapshot<List<Map<String, dynamic>>>
                        snapshot) {
                      if (snapshot.connectionState ==
                          ConnectionState.done) {
                        return ListView.builder(
                            itemCount: snapshot.data?.length??0,
                            itemBuilder: (context, index) {
                              //fetching each map from list
                              final Map<String, dynamic> image =
                              snapshot.data![index];
                              return Card(
                                child: ListTile(
                                  leading: Image.network(image["imageurl"]),
                                  title:Text(image["uploaded_by"]),
                                  subtitle: Text(image["description"]),

                                ),
                              );
                            });
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }))
          ],
        ),
      ),
    );
  }
  Future<List<Map<String, dynamic>>> loadData() async {
    List<Map<String, dynamic>> images = [];
    final ListResult result = await storage
        .ref()
        .list();

    final List<Reference> allfiles = result.items;
    await Future.forEach(allfiles, (singlefile) async{
      final String fileUrl = await singlefile.getDownloadURL();

      final FullMetadata metadata = await singlefile.getMetadata();
      images.add({
        "imageurl": fileUrl,
        "path": singlefile.fullPath,
        "uploaded_by": metadata.customMetadata?["uploaded_by"] ?? "No Data",//using nul aware(?) firstly value is here or not value is here then [print the value it is not value thn print no data]
        "description": metadata.customMetadata?["description"] ?? "No Data"
      });
    });
    return images;
  }

  Future<void> upload(String imageinput) async {
    final picker = ImagePicker();
    XFile? pickedImage;
    try {
      pickedImage = await picker.pickImage(
          source: imageinput == "Camera"
              ? ImageSource.camera
              : ImageSource.gallery);
      final String filename = path.basename(pickedImage!.path);
      File imagefile = File(pickedImage.path);
      try {
        await storage.ref(filename).putFile(
            imagefile,
            SettableMetadata(customMetadata: {
              'uploaded_by': 'SomeOne!!',
              'description': 'Some Description...'
            }));
        setState(() {});
      } on FirebaseException catch (e) {
        print(e);
      }
    } catch (e) {
      print(e);
    }
  }



}
