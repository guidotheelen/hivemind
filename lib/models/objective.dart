import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Objective extends Equatable {
  final String? id;
  final String name;
  final String description;
  final DateTime createdAt;
  final String createdBy;

  Objective({
    String? id,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.createdBy,
  }) : id = id ?? const Uuid().v4();

  @override
  List<Object?> get props => [id];
}
