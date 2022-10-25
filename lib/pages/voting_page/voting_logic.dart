import 'package:flutter/material.dart';
import 'package:hive_mind/models/objective.dart';

class VotingLogic extends ChangeNotifier {
  Objective? _upvote;
  Objective? _downvote;

  Objective? get upvote => _upvote;
  Objective? get downvote => _downvote;
  bool get hasUpvote => _upvote != null;
  bool get hasDownvote => _downvote != null;
  Objective? get topObjective => objectives.reduce((value, element) =>
      value.totalVotes > element.totalVotes ? value : element);

  final objectives = [
    Objective(
      name: 'Meet a stranger',
      description: 'Talk to a stranger for at least 5 minutes.',
      createdAt: DateTime(2021, 1, 1),
      createdBy: '123',
      upvotes: 10,
      downvotes: 5,
    ),
    Objective(
      name: 'Eat a bug',
      description: 'Eat a bug.',
      createdAt: DateTime(2021, 1, 1),
      createdBy: '123',
      upvotes: 15,
      downvotes: 10,
    ),
    Objective(
      name: 'Write a poem',
      description: 'Write a poem.',
      createdAt: DateTime(2021, 1, 1),
      createdBy: '123',
      upvotes: 20,
      downvotes: 4,
    ),
    Objective(
      name: 'Plant a tree',
      description: 'Plant a tree.',
      createdAt: DateTime(2021, 1, 1),
      createdBy: '123',
      upvotes: 25,
      downvotes: 1,
    )
  ];

  void toggleVote(Objective objective, [bool upvote = true]) {
    if (upvote) {
      if (_upvote == objective) {
        _upvote = null;
      } else {
        _upvote = objective;
        if (_downvote == objective) {
          _downvote = null;
        }
      }
    } else {
      if (_downvote == objective) {
        _downvote = null;
      } else {
        _downvote = objective;
        if (_upvote == objective) {
          _upvote = null;
        }
      }
    }
    notifyListeners();
  }
}
