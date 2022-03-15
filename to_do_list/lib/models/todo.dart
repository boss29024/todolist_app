import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

@JsonSerializable()
class Todo {
  @JsonKey(defaultValue: "")
  final String header;
  @JsonKey(defaultValue: "")
  final String note;
  final DateTime date;
  final DateTime time;
  @JsonKey(defaultValue: false)
  final bool isComplete;

  Todo(this.header, this.note, this.date, this.time, this.isComplete);
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
