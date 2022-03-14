import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

@JsonSerializable()
class Todo {
  @JsonKey(defaultValue: "")
  final String header;
  @JsonKey(defaultValue: "")
  final String note;
  @JsonKey(defaultValue: "")
  final String list;
  final DateTime date;
  final DateTime time;


  Todo(this.header, this.note,this.list,this.date,this.time,);

  factory Todo.fromJson(Map<String, dynamic> json) =>
      _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
