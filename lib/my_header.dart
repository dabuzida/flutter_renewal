import 'package:flutter/material.dart';

const List<String> _languages = <String>['한국어', 'English', '日本語', 'Español'];

enum Lang {
  ko('ko', '한국어'),
  en('en', 'English'),
  ja('ja', '日本語'),
  ;

  const Lang(this.code, this.localizedName);

  final String code;
  final String localizedName;

  static List<String> getList() {
    return <String>[
      Lang.ko.localizedName,
      Lang.en.localizedName,
      Lang.ja.localizedName,
    ];
  }

  static String localize({required String code}) {
    for (final Lang alzwinLanguage in Lang.values) {
      if (alzwinLanguage.code == code) {
        return alzwinLanguage.localizedName;
      }
    }

    return '';
  }

  static Lang? make({required String code}) {
    for (final Lang alzwinLanguage in Lang.values) {
      if (alzwinLanguage.code == code) {
        return alzwinLanguage;
      }
    }

    return null;
  }
}

class MyHeader extends StatefulWidget {
  const MyHeader({super.key});

  @override
  State<MyHeader> createState() => _MyHeaderState();
}

class _MyHeaderState extends State<MyHeader> {
  String _selected = _languages[0];
  String dropdownValue = 'Dog';
  final double _headerFontSize = 14.0;
  final FontWeight _fontWeight = FontWeight.w500;

  Lang x = Lang.en;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.green[100],
          child: TextButton(
            onPressed: () {
              setState(() {
                x = Lang.ja;
              });
            },
            child: Text(
              x.localizedName,
            ),
          ),
        ),
        const Divider(
          color: Colors.red,
          indent: 200,
          endIndent: 100,
          height: 50,
          thickness: 3,
        ),
        Container(
          color: Colors.red[100],
          child: TextButton(
            onPressed: () {
              setState(() {
                x = Lang.ja;
              });
            },
            child: Text(
              x.localizedName,
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: Text('side super', style: TextStyle(color: Colors.red, fontSize: 30)),
        ),
        Container(
          color: Color(0xffffffff),
          // color: const Color(0xFF000000),
          // color: const Color(0xFFFFFFFF),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const SizedBox(height: 100),
              // 37 8 6
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                        style: TextStyle(
                          color: const Color(0xFF404040),
                          fontSize: _headerFontSize,
                          fontWeight: _fontWeight,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selected = newValue ?? '-';
                          });
                        },
                        // items: _languages.map<DropdownMenuItem<String>>(
                        //   (String value) {
                        //     return DropdownMenuItem<String>(
                        //       value: value,
                        //       child: Text(value),
                        //     );
                        //   },
                        // ).toList(),
                        items: _languages.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                ],
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
