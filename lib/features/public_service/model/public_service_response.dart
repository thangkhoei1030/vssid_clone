class PublicServiceResponse {
  PublicServiceResponse({
    required this.id,
    required this.imageAvatar,
    required this.images,
    required this.urlVideo,
    required this.typeVideo,
    required this.files,
    required this.view,
    required this.like,
    required this.mainCategoryId,
    required this.rating,
    required this.ratingNumber,
    required this.hasAlbum,
    required this.hasFile,
    required this.hasVideo,
    required this.comment,
    required this.createdBy,
    required this.createdByUser,
    required this.created,
    required this.updated,
    required this.position,
    required this.featured,
    required this.catalogue,
    required this.seoScore,
    required this.keywordScore,
    required this.draft,
    required this.status,
    required this.name,
    required this.description,
    required this.content,
    required this.tags,
    required this.seoTitle,
    required this.seoDescription,
    required this.seoKeyword,
    required this.lang,
    required this.urlId,
    required this.url,
    required this.categories,
  });

  final int? id;
  final String? imageAvatar;
  final dynamic images;
  final dynamic urlVideo;
  final dynamic typeVideo;
  final dynamic files;
  final int? view;
  final dynamic like;
  final dynamic mainCategoryId;
  final dynamic rating;
  final dynamic ratingNumber;
  final int? hasAlbum;
  final int? hasFile;
  final int? hasVideo;
  final dynamic comment;
  final int? createdBy;
  final dynamic createdByUser;
  final String? created;
  final dynamic updated;
  final int? position;
  final int? featured;
  final int? catalogue;
  final String? seoScore;
  final dynamic keywordScore;
  final int? draft;
  final int? status;
  final String? name;
  final String? description;
  final dynamic content;
  final List<dynamic> tags;
  final dynamic seoTitle;
  final dynamic seoDescription;
  final dynamic seoKeyword;
  final String? lang;
  final int? urlId;
  final String? url;
  final Map<String, Category>? categories;

  PublicServiceResponse copyWith({
    int? id,
    String? imageAvatar,
    dynamic images,
    dynamic urlVideo,
    dynamic typeVideo,
    dynamic files,
    int? view,
    dynamic like,
    dynamic mainCategoryId,
    dynamic rating,
    dynamic ratingNumber,
    int? hasAlbum,
    int? hasFile,
    int? hasVideo,
    dynamic comment,
    int? createdBy,
    dynamic createdByUser,
    String? created,
    dynamic updated,
    int? position,
    int? featured,
    int? catalogue,
    String? seoScore,
    dynamic keywordScore,
    int? draft,
    int? status,
    String? name,
    String? description,
    dynamic content,
    List<dynamic>? tags,
    dynamic seoTitle,
    dynamic seoDescription,
    dynamic seoKeyword,
    String? lang,
    int? urlId,
    String? url,
    Map<String, Category>? categories,
  }) {
    return PublicServiceResponse(
      id: id ?? this.id,
      imageAvatar: imageAvatar ?? this.imageAvatar,
      images: images ?? this.images,
      urlVideo: urlVideo ?? this.urlVideo,
      typeVideo: typeVideo ?? this.typeVideo,
      files: files ?? this.files,
      view: view ?? this.view,
      like: like ?? this.like,
      mainCategoryId: mainCategoryId ?? this.mainCategoryId,
      rating: rating ?? this.rating,
      ratingNumber: ratingNumber ?? this.ratingNumber,
      hasAlbum: hasAlbum ?? this.hasAlbum,
      hasFile: hasFile ?? this.hasFile,
      hasVideo: hasVideo ?? this.hasVideo,
      comment: comment ?? this.comment,
      createdBy: createdBy ?? this.createdBy,
      createdByUser: createdByUser ?? this.createdByUser,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      position: position ?? this.position,
      featured: featured ?? this.featured,
      catalogue: catalogue ?? this.catalogue,
      seoScore: seoScore ?? this.seoScore,
      keywordScore: keywordScore ?? this.keywordScore,
      draft: draft ?? this.draft,
      status: status ?? this.status,
      name: name ?? this.name,
      description: description ?? this.description,
      content: content ?? this.content,
      tags: tags ?? this.tags,
      seoTitle: seoTitle ?? this.seoTitle,
      seoDescription: seoDescription ?? this.seoDescription,
      seoKeyword: seoKeyword ?? this.seoKeyword,
      lang: lang ?? this.lang,
      urlId: urlId ?? this.urlId,
      url: url ?? this.url,
      categories: categories ?? this.categories,
    );
  }

  factory PublicServiceResponse.fromJson(Map<String, dynamic> json) {
    return PublicServiceResponse(
      id: json["id"],
      imageAvatar: json["image_avatar"],
      images: json["images"],
      urlVideo: json["url_video"],
      typeVideo: json["type_video"],
      files: json["files"],
      view: json["view"],
      like: json["like"],
      mainCategoryId: json["main_category_id"],
      rating: json["rating"],
      ratingNumber: json["rating_number"],
      hasAlbum: json["has_album"],
      hasFile: json["has_file"],
      hasVideo: json["has_video"],
      comment: json["comment"],
      createdBy: json["created_by"],
      createdByUser: json["created_by_user"],
      created: json["created"].toString(),
      updated: json["updated"],
      position: json["position"],
      featured: json["featured"],
      catalogue: json["catalogue"],
      seoScore: json["seo_score"],
      keywordScore: json["keyword_score"],
      draft: json["draft"],
      status: json["status"],
      name: json["name"],
      description: json["description"],
      content: json["content"],
      tags: json["tags"] == null
          ? []
          : List<dynamic>.from(json["tags"]!.map((x) => x)),
      seoTitle: json["seo_title"],
      seoDescription: json["seo_description"],
      seoKeyword: json["seo_keyword"],
      lang: json["lang"],
      urlId: json["url_id"],
      url: json["url"],
      categories: json["categories"] == null
          ? null
          : Map.from(json["categories"]).map(
              (k, v) => MapEntry<String, Category>(k, Category.fromJson(v))),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "image_avatar": imageAvatar,
        "images": images,
        "url_video": urlVideo,
        "type_video": typeVideo,
        "files": files,
        "view": view,
        "like": like,
        "main_category_id": mainCategoryId,
        "rating": rating,
        "rating_number": ratingNumber,
        "has_album": hasAlbum,
        "has_file": hasFile,
        "has_video": hasVideo,
        "comment": comment,
        "created_by": createdBy,
        "created_by_user": createdByUser,
        "created": created,
        "updated": updated,
        "position": position,
        "featured": featured,
        "catalogue": catalogue,
        "seo_score": seoScore,
        "keyword_score": keywordScore,
        "draft": draft,
        "status": status,
        "name": name,
        "description": description,
        "content": content,
        "tags": tags.map((x) => x).toList(),
        "seo_title": seoTitle,
        "seo_description": seoDescription,
        "seo_keyword": seoKeyword,
        "lang": lang,
        "url_id": urlId,
        "url": url,
        "categories": categories == null
            ? null
            : Map.from(categories!)
                .map((k, v) => MapEntry<String, dynamic>(k, v?.toJson())),
      };

  @override
  String toString() {
    return "$id, $imageAvatar, $images, $urlVideo, $typeVideo, $files, $view, $like, $mainCategoryId, $rating, $ratingNumber, $hasAlbum, $hasFile, $hasVideo, $comment, $createdBy, $createdByUser, $created, $updated, $position, $featured, $catalogue, $seoScore, $keywordScore, $draft, $status, $name, $description, $content, $tags, $seoTitle, $seoDescription, $seoKeyword, $lang, $urlId, $url, $categories, ";
  }
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.url,
  });

  final int? id;
  final String? name;
  final String? url;

  Category copyWith({
    int? id,
    String? name,
    String? url,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["id"],
      name: json["name"],
      url: json["url"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "url": url,
      };

  @override
  String toString() {
    return "$id, $name, $url, ";
  }
}
