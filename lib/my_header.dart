import 'package:flutter/material.dart';

const List<String> _languages = <String>['한국어', 'English', '日本語', 'Español'];

class MyHeader extends StatefulWidget {
  const MyHeader({super.key});

  @override
  State<MyHeader> createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
  String _selected = _languages[0];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: const Color(0xFF000000),
          // color: const Color(0xFFFFFFFF),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const SizedBox(height: 100),
              // 37 8 6
              Container(
                // width: 56,
                color: const Color(0xFFEBEBEB),
                // DropdownButtonFormField
                // DropdownButtonHideUnderline
                // DropdownButton
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selected,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    elevation: 0,
                    dropdownColor: const Color(0xFFFFFFFF),
                    borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                    style: const TextStyle(color: Color(0xFF404040)),
                    // underline: const SizedBox(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selected = newValue!;
                      });
                    },
                    items: _languages.map<DropdownMenuItem<String>>(
                      (String? value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value ?? '',
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(100),
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(color: const Color(0xFFC9C9C9)),
                ),
                child: const Image(
                  image: AssetImage('assets/account.png'),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  // borderRadius: BorderRadius.circular(100.0),
                  // borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  shape: BoxShape.circle,
                  // border: Border.all(width: 2, color: Colors.white)),
                  // border: BoxBorder.,
                ),
                child: const Image(
                  image: AssetImage('assets/account.png'),
                ),
              ),
              Container(
                width: 500,
                height: 500,
                color: Colors.redAccent[100],
                child: Center(
                  child: Container(
                    color: Colors.blueAccent[100],
                    child: const Text(
                      'inner voice tree river side compute',
                      style: TextStyle(
                        fontSize: 50.0,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
