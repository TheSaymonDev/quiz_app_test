class ScoreModel {
  int? id;
  int score;

  ScoreModel({
    this.id,
    required this.score,
  });

  factory ScoreModel.fromMap(Map<String, dynamic> s) => ScoreModel(
        id: s['id'],
        score: s['score'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'score': score,
      };
}
