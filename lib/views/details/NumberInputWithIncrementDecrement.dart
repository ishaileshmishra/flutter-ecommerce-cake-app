import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberInputWithIncrementDecrement extends StatefulWidget {
  @override
  _NumberInputWithIncrementDecrementState createState() =>
      _NumberInputWithIncrementDecrementState();
}

class _NumberInputWithIncrementDecrementState
    extends State<NumberInputWithIncrementDecrement> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = "1"; // Setting the initial value for the field.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            width: 60.0,
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.blueGrey,
                width: 2.0,
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    controller: _controller,
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: false,
                      signed: true,
                    ),
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                Container(
                  height: 38.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0.5,
                            ),
                          ),
                        ),
                        child: InkWell(
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: 18.0,
                          ),
                          onTap: () {
                            int currentValue = int.parse(_controller.text);
                            setState(() {
                              currentValue++;
                              _controller.text = (currentValue)
                                  .toString(); // incrementing value
                            });
                          },
                        ),
                      ),
                      InkWell(
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 18.0,
                        ),
                        onTap: () {
                          int currentValue = int.parse(_controller.text);
                          setState(() {
                            print("Setting state");
                            currentValue--;
                            _controller.text =
                                (currentValue > 0 ? currentValue : 0)
                                    .toString(); // decrementing value
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
