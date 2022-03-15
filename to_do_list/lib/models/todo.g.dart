// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todo _$TodoFromJson(Map<String, dynamic> json) => Todo(
      json['header'] as String? ?? '',
      json['note'] as String? ?? '',
      DateTime.parse(json['date'] as String),
      DateTime.parse(json['time'] as String),
      json['isComplete'] as bool? ?? false,
    );

Map<String, dynamic> _$TodoToJson(Todo instance) => <String, dynamic>{
      'header': instance.header,
      'note': instance.note,
      'date': instance.date.toIso8601String(),
      'time': instance.time.toIso8601String(),
      'isComplete': instance.isComplete,
    };
