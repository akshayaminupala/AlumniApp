import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class TextWidget extends StatefulWidget {
  TextWidget({
    @required TextEditingController controller,
    @required this.errorText,
    @required this.label,
    this.textInput,
  }) : _controller = controller;

  final TextEditingController _controller;
  String errorText;
  final TextInputType textInput;
  final String label;

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInput ?? TextInputType.emailAddress,
      controller: widget._controller,
      onChanged: (value) {
        if (value.length == 0) {
          setState(() {
            widget.errorText = 'The Field is Mandatory';
          });
        } else {
          setState(() {
            widget.errorText = null;
          });
        }
      },
      decoration: InputDecoration(
        hintText: widget.label,
        errorText: widget.errorText,
      ),
    );
  }
}

// ignore: must_be_immutable
class BatchTextField extends StatefulWidget {
  BatchTextField({
    @required TextEditingController controller,
    @required this.errorText,
  }) : _controller = controller;

  final TextEditingController _controller;
  String errorText;

  @override
  _BatchTextFieldState createState() => _BatchTextFieldState();
}

class _BatchTextFieldState extends State<BatchTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget._controller,
      onChanged: (value) {
        if (value.length == 0) {
          setState(() {
            widget.errorText = 'The Field in Mandatory';
          });
        } else if (value.length <= 4 && value.length >= 1) {
          print(int.parse(value));
          if (int.parse(value) >= 1978 && int.parse(value) <= 2020) {
            setState(() {
              widget.errorText = null;
            });
          } else {
            setState(() {
              widget.errorText = 'The value must be between 1994 to 2020';
            });
          }
        } else {
          setState(() {
            widget.errorText = 'The year should be less than 4 digits';
          });
        }
      },
      decoration: InputDecoration(
        hintText: 'Batch',
        errorText: widget.errorText,
      ),
    );
  }
}

// ignore: must_be_immutable
class EmailTextField extends StatefulWidget {
  EmailTextField({
    @required TextEditingController controller,
    @required this.errorText,
  }) : _controller = controller;

  final TextEditingController _controller;
  String errorText;

  @override
  _EmailTextFieldState createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget._controller,
      onChanged: (value) {
        if (value.length == 0) {
          setState(() {
            widget.errorText = 'The Field in Mandatory';
          });
        } else {
          if (value.contains('@')) {
            var word = value.split('.');
            if (word[1].length >= 3) {
              setState(() {
                widget.errorText = null;
              });
            } else {
              setState(() {
                widget.errorText = 'please enter a valid email';
              });
            }
          } else {
            setState(() {
              widget.errorText = 'please enter a valid email';
            });
          }
        }
      },
      decoration: InputDecoration(
        hintText: 'email',
        errorText: widget.errorText,
      ),
    );
  }
}

class VerticalLine extends StatelessWidget {
  const VerticalLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 0.5,
        width: double.infinity,
        color: Colors.grey,
      ),
    );
  }
}
