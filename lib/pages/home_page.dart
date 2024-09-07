import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                CollectionReference usersReference =
                    FirebaseFirestore.instance.collection("users");
                usersReference.get().then(
                  (value) {
                    QuerySnapshot userCollection = value;
                    List<QueryDocumentSnapshot> docs = userCollection.docs;
                    // print(userCollection.size);
                    // print(userCollection.docs);
                    // print(docs[0].id);
                    docs.forEach(
                      (e) {
                        print("--------------------------");
                        print(e);
                        print(e.id);
                        print(e.data());
                        print("--------------------------");
                      },
                    );
                  },
                );
              },
              child: Text("Traer datos"),
            )
          ],
        ),
      ),
    );
  }
}
