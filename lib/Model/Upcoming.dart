class UpcomingFilm {
  String? name;
  String? imageUrl;
  String? overview;
  double? rating;
  String? trailer;
  double? duration;
  bool? adult;
  String? genre;

  UpcomingFilm(
      {this.name,
        this.imageUrl,
        this.overview,
        this.rating,
        this.trailer,
        this.duration,
        this.adult,
        this.genre});

  UpcomingFilm.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imageUrl = json['imageUrl'];
    overview = json['overview'];
    rating = json['rating'].toDouble();
    trailer = json['trailer'];
    duration = json['duration'].toDouble();
    adult = json['adult'];
    genre = json['genre'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['imageUrl'] = this.imageUrl;
    data['overview'] = this.overview;
    data['rating'] = this.rating;
    data['trailer'] = this.trailer;
    data['duration'] = this.duration;
    data['adult'] = this.adult;
    data['genre'] = this.genre;
    return data;
  }
}