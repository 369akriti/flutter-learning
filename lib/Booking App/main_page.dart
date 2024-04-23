import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.blue[800],
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 80.0,
                  right: 20.0,
                  left: 20.0,
                  bottom: 20.0,
                ),
                child: Column(children: [
                  const Text(
                    'Search for cheap',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'airline ticket',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.0),
                        )),
                    child: Column(children: [
                      TextField(
                          cursorWidth: 1.0,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: 'To',
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          )),
                      const Divider(thickness: 1, indent: 40),
                      TextField(
                        cursorWidth: 1.0,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: 'Where',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              controller: TextEditingController(),
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  hintText: 'Choose Date',
                                  filled: true,
                                  contentPadding: EdgeInsets.zero,
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  prefixIcon: InkWell(
                                    onTap: () async {
                                      await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2015),
                                        lastDate: DateTime(2025),
                                      );
                                    },
                                    child: Icon(
                                      Icons.calendar_month,
                                      color: Colors.grey[500],
                                    ),
                                  )),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 3,
                          child: DropdownButtonFormField(
                              isDense: true,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.grey[500],
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    4.0,
                                  ),
                                ),
                              ),
                              value: '-sel-',
                              items:
                                  ['-sel-', '1', '2', '3', '4', '5'].map((e) {
                                return DropdownMenuItem<String>(
                                    value: e, child: Text(e));
                              }).toList(),
                              onChanged: (val) {}),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 48,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Text(
                                'Filters',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0.0),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                4.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recently viewed',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(0.0),
                      leading: Image.asset('assets/images/img_6.jpg'),
                      title: const Text(
                        'San Francisco',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      subtitle: const Text(
                        '19-29 august, 1 passenger',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(children: [
                      Text(
                        'Where you can',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Open',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.blue,
                      )
                    ]),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      child: Image.asset(
                        'assets/images/san_francisco_map.jpg',
                        fit: BoxFit.fill,
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
