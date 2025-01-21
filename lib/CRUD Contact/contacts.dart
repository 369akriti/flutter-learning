import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  List<ContactList> contact = List.empty(growable: true);

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('Contact List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          TextField(
            controller: nameController,
            maxLength: 20,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintText: "Contact Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: numberController,
            keyboardType: TextInputType.number,
            maxLength: 10,
            decoration: const InputDecoration(
              hintText: "Contact Number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  String name = nameController.text.trim();
                  String number = numberController.text.trim();
                  if (name.isNotEmpty && number.isNotEmpty) {
                    setState(() {
                      nameController.text = '';
                      numberController.text = '';
                      contact.add(ContactList(name: name, number: number));
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    backgroundColor: Colors.deepPurpleAccent),
                child: const Text(
                  "Save",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    backgroundColor: Colors.deepPurpleAccent),
                onPressed: () {
                  String name = nameController.text.trim();
                  String number = numberController.text.trim();
                  if (name.isNotEmpty && number.isNotEmpty) {
                    setState(() {
                      nameController.text = "";
                      numberController.text = "";
                      contact[selectedIndex].name = name;
                      contact[selectedIndex].number = number;
                      selectedIndex = -1;
                    });
                  }
                },
                child: const Text(
                  "Update",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ]),
          const SizedBox(height: 20),
          contact.isEmpty
              ? const Text("No Contact Saved Yet")
              : Expanded(
                  child: ListView.builder(
                      itemCount: contact.length,
                      itemBuilder: (context, index) => itemOfRow(index)),
                )
        ]),
      ),
    );
  }

  Widget itemOfRow(int index) {
    return Card(
      child: ListTile(
        title: Text(contact[index].name),
        subtitle: Text(contact[index].number),
        trailing: Row(mainAxisSize: MainAxisSize.min, children: [
          InkWell(
            onTap: () {
              setState(() {
                nameController.text = contact[index].name;
                numberController.text = contact[index].number;
                selectedIndex = index;
              });
            },
            child: Icon(Icons.edit, color: Colors.grey[400]),
          ),
          InkWell(
            onTap: () {
              setState(() {
                contact.removeAt(index);
              });
            },
            child: Icon(Icons.delete, color: Colors.grey[400]),
          ),
        ]),
      ),
    );
  }
}

class ContactList {
  String name;
  String number;

  ContactList({required this.name, required this.number});
}
