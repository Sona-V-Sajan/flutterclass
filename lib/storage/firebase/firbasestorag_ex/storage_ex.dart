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
        title: Text("Firbase Storage"),
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
                MaterialButton(
                  height: 40,
                  minWidth: 150,
                  color: Colors.green,
                  onPressed: () => upload("Gallery"),
                  child: Text("Gallery"),
                )
              ],
            ),
            Expanded(
                child:
                    //firbase conneect check cheyanum
                    FutureBuilder(

                        ///if firebase connection is success then this function
                        future: loadData(),
                        builder: (context,
                            AsyncSnapshot<List<Map<String, dynamic>>>
                                snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return ListView.builder(
                              //conctiin edukunnathum okke using snaphot
                              itemCount: snapshot.data?.length??0,
                                itemBuilder: (context, index) {
                              //fetching each map from list
                              final Map<String, dynamic> image =
                                  snapshot.data![index];
                              return Card(
                                child: ListTile(
                                  // leading: Image.network(snapshot.data!["index]["imageurl"]),or
                                  leading: Image.network(image["imageurl"]),
                                  title:Text(image["uploaded_by"]),
                                  subtitle: Text(image["description"]),
                                  trailing:IconButton(onPressed: ()=>deleteImage(image["path"]
                                  ), icon: Icon(Icons.delete)),
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
  //isload => firebase data is not void its list of map + future data

  Future<List<Map<String, dynamic>>> loadData() async {
    List<Map<String, dynamic>> images = [];// list of map in firebase
    final ListResult result = await storage //this fun(working of lit or list all)
        .ref()
        .list(); //group of vales from fireebase storage instance
    //all th data from firebase stored a refernce in list of map

    final List<Reference> allfiles = result.items;
     //all file=> single filles akkanam then url,img path ,uploaded by,des edukanam
    await Future.forEach(allfiles, (singlefile) async { //accessing list of map using foreach all the data can be take in key value pairs
      //to get image path (path as network image path)
      final String fileUrl = await singlefile.getDownloadURL();

      //acesssing ,metadata
      final FullMetadata metadata = await singlefile.getMetadata();
      images.add({
        "imageurl": fileUrl,
        "path": singlefile.fullPath,//is a property take img full path
        "uploaded_by": metadata.customMetadata?["uploaded_by"] ?? "No Data",//using nul aware(?) firstly value is here or not value is here then [print the value it is not value thn print no data]
        "description": metadata.customMetadata?["description"] ?? "No Data"
      });
      //all firba data ad to img list
    });
    return images;
  }

  Future<void> upload(String imageinput) async {
    final picker = ImagePicker();
    //crossplatform path kittum
    XFile? pickedImage;
    try {
      pickedImage = await picker.pickImage(
          source: imageinput == "Camera"
              ? ImageSource.camera
              : ImageSource.gallery);
      final String filename = path.basename(pickedImage!.path);
      File imagefile = File(pickedImage.path); //retrive path
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

 Future<void> deleteImage(String imagepath) async{
    await storage.ref(imagepath).delete();
    setState(() {
    });
 }


}
