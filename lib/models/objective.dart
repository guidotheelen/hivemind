import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Objective extends Equatable {
  final String? id;
  final String name;
  final String description;
  final DateTime createdAt;
  final String createdBy;
  final int upvotes;
  final int downvotes;

  Objective({
    String? id,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.createdBy,
    this.upvotes = 0,
    this.downvotes = 0,
  }) : id = id ?? const Uuid().v4();

  int get totalVotes => upvotes - downvotes;

  @override
  List<Object?> get props => [id];
}
