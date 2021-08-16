import 'dart:convert';

class NewsListResponseModel {
  final String status;
  final int totalResults;
  final List<NewsResponseModel> articles;

  NewsListResponseModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'totalResults': totalResults,
      'articles': articles.map((x) => x.toMap()).toList(),
    };
  }

  factory NewsListResponseModel.fromMap(Map<String, dynamic> map) {
    print(map['articles']);
    return NewsListResponseModel(
      status: map['status'],
      totalResults: map['totalResults'],
      articles: List<NewsResponseModel>.from(
          map['articles'].map((x) => NewsResponseModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsListResponseModel.fromJson(String source) =>
      NewsListResponseModel.fromMap(json.decode(source));
}

class NewsResponseModel {
  final SourceNewsResponseModel source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  NewsResponseModel(
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  );

  Map<String, dynamic> toMap() {
    return {
      'source': source.toMap(),
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt,
      'content': content,
    };
  }

  factory NewsResponseModel.fromMap(Map<String, dynamic> map) {
    return NewsResponseModel(
      SourceNewsResponseModel.fromMap(map['source']),
      map['author'],
      map['title'],
      map['description'],
      map['url'],
      map['urlToImage'],
      map['publishedAt'],
      map['content'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsResponseModel.fromJson(String source) =>
      NewsResponseModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'NewsResponseModel(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
  }
}

class SourceNewsResponseModel {
  final String? id;
  final String name;

  SourceNewsResponseModel({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory SourceNewsResponseModel.fromMap(Map<String, dynamic> map) {
    return SourceNewsResponseModel(
      id: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SourceNewsResponseModel.fromJson(String source) =>
      SourceNewsResponseModel.fromMap(json.decode(source));

  @override
  String toString() => 'SourceNewsResponseModel(id: $id, name: $name)';
}
