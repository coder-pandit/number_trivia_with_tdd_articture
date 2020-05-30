import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class NumberTrivia extends Equatable {
  final String text;
  final int number;

  NumberTrivia({
    @required this.text,
    @required this.number,
  });

  factory NumberTrivia.fromJson(Map<String, dynamic> json) => NumberTrivia(
        text: json['text'],
        number: json['number'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['number'] = this.number;
    return data;
  }

  @override
  List<Object> get props => [
        text,
        number,
      ];
}
