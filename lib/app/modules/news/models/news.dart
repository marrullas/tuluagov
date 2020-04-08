// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

List<NewsModel> newsModelFromJson(String str) => List<NewsModel>.from(json.decode(str).map((x) => NewsModel.fromJson(x)));

String newsModelToJson(List<NewsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewsModel {
    int id;
    DateTime date;
    //DateTime dateGmt;
    Guid guid;
    //DateTime modified;
    //DateTime modifiedGmt;
   // String slug;
    //Status status;
   // NewsModelType type;
    String link;
    Guid title;
    Content content;
   // int author;
    int featuredMedia;
    //CommentStatus commentStatus;
    //PingStatus pingStatus;
    //String template;
    //List<int> categories;
    NewsModelLinks links;
    Embedded embedded;

    NewsModel({
        this.id,
        this.date,
        //this.dateGmt,
        this.guid,
        /*this.modified,
        this.modifiedGmt,
        this.slug,
        this.status,
        this.type,*/
        this.link,
        this.title,
        this.content,
        //this.author,
        this.featuredMedia,
        /*this.commentStatus,
        this.pingStatus,
        this.template,
        this.categories,*/
        this.links,
        this.embedded,
    });

    factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        id: json["id"] == null ? null : json["id"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        //dateGmt: json["date_gmt"] == null ? null : DateTime.parse(json["date_gmt"]),
        guid: json["guid"] == null ? null : Guid.fromJson(json["guid"]),
        /*modified: json["modified"] == null ? null : DateTime.parse(json["modified"]),
        modifiedGmt: json["modified_gmt"] == null ? null : DateTime.parse(json["modified_gmt"]),
        slug: json["slug"] == null ? null : json["slug"],
        status: json["status"] == null ? null : statusValues.map[json["status"]],
        type: json["type"] == null ? null : newsModelTypeValues.map[json["type"]],*/
        link: json["link"] == null ? null : json["link"],
        title: json["title"] == null ? null : Guid.fromJson(json["title"]),
        content: json["content"] == null ? null : Content.fromJson(json["content"]),
        //author: json["author"] == null ? null : json["author"],
        featuredMedia: json["featured_media"] == null ? null : json["featured_media"],
        /*commentStatus: json["comment_status"] == null ? null : commentStatusValues.map[json["comment_status"]],
        pingStatus: json["ping_status"] == null ? null : pingStatusValues.map[json["ping_status"]],
        template: json["template"] == null ? null : json["template"],
        categories: json["categories"] == null ? null : List<int>.from(json["categories"].map((x) => x)),*/
        links: json["_links"] == null ? null : NewsModelLinks.fromJson(json["_links"]),
        embedded: json["_embedded"] == null ? null : Embedded.fromJson(json["_embedded"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "date": date == null ? null : date.toIso8601String(),
        //"date_gmt": dateGmt == null ? null : dateGmt.toIso8601String(),
        "guid": guid == null ? null : guid.toJson(),
        /*"modified": modified == null ? null : modified.toIso8601String(),
        "modified_gmt": modifiedGmt == null ? null : modifiedGmt.toIso8601String(),
        "slug": slug == null ? null : slug,
        "status": status == null ? null : statusValues.reverse[status],
        "type": type == null ? null : newsModelTypeValues.reverse[type],*/
        "link": link == null ? null : link,
        "title": title == null ? null : title.toJson(),
        "content": content == null ? null : content.toJson(),
       // "author": author == null ? null : author,
        "featured_media": featuredMedia == null ? null : featuredMedia,
        /*"comment_status": commentStatus == null ? null : commentStatusValues.reverse[commentStatus],
        "ping_status": pingStatus == null ? null : pingStatusValues.reverse[pingStatus],
        "template": template == null ? null : template,
        "categories": categories == null ? null : List<dynamic>.from(categories.map((x) => x)),*/
        "_links": links == null ? null : links.toJson(),
        "_embedded": embedded == null ? null : embedded.toJson(),
    };
}

enum CommentStatus { OPEN }

final commentStatusValues = EnumValues({
    "open": CommentStatus.OPEN
});

class Content {
    String rendered;
    bool protected;

    Content({
        this.rendered,
        this.protected,
    });

    factory Content.fromJson(Map<String, dynamic> json) => Content(
        rendered: json["rendered"] == null ? null : json["rendered"],
        protected: json["protected"] == null ? null : json["protected"],
    );

    Map<String, dynamic> toJson() => {
        "rendered": rendered == null ? null : rendered,
        "protected": protected == null ? null : protected,
    };
}

class Embedded {
    //List<EmbeddedAuthor> author;
    List<WpFeaturedmedia> wpFeaturedmedia;
    //List<List<EmbeddedWpTerm>> wpTerm;

    Embedded({
        //this.author,
        this.wpFeaturedmedia,
        //this.wpTerm,
    });

    factory Embedded.fromJson(Map<String, dynamic> json) => Embedded(
        //author: json["author"] == null ? null : List<EmbeddedAuthor>.from(json["author"].map((x) => EmbeddedAuthor.fromJson(x))),
        wpFeaturedmedia: json["wp:featuredmedia"] == null ? null : List<WpFeaturedmedia>.from(json["wp:featuredmedia"].map((x) => WpFeaturedmedia.fromJson(x))),
        //wpTerm: json["wp:term"] == null ? null : List<List<EmbeddedWpTerm>>.from(json["wp:term"].map((x) => List<EmbeddedWpTerm>.from(x.map((x) => EmbeddedWpTerm.fromJson(x))))),
    );

    Map<String, dynamic> toJson() => {
        //"author": author == null ? null : List<dynamic>.from(author.map((x) => x.toJson())),
        "wp:featuredmedia": wpFeaturedmedia == null ? null : List<dynamic>.from(wpFeaturedmedia.map((x) => x.toJson())),
        //"wp:term": wpTerm == null ? null : List<dynamic>.from(wpTerm.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))),
    };
}

class EmbeddedAuthor {
    Code code;
    Message message;
    Data data;

    EmbeddedAuthor({
        this.code,
        this.message,
        this.data,
    });

    factory EmbeddedAuthor.fromJson(Map<String, dynamic> json) => EmbeddedAuthor(
        code: json["code"] == null ? null : codeValues.map[json["code"]],
        message: json["message"] == null ? null : messageValues.map[json["message"]],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "code": code == null ? null : codeValues.reverse[code],
        "message": message == null ? null : messageValues.reverse[message],
        "data": data == null ? null : data.toJson(),
    };
}

enum Code { REST_USER_INVALID_ID }

final codeValues = EnumValues({
    "rest_user_invalid_id": Code.REST_USER_INVALID_ID
});

class Data {
    int status;

    Data({
        this.status,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        status: json["status"] == null ? null : json["status"],
    );

    Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
    };
}

enum Message { ID_DE_USUARIO_NO_VLIDO }

final messageValues = EnumValues({
    "ID de usuario no válido.": Message.ID_DE_USUARIO_NO_VLIDO
});

class WpFeaturedmedia {
    int id;
    DateTime date;
    String slug;
    WpFeaturedmediaType type;
    String link;
    Guid title;
    int author;
    Guid caption;
    String altText;
    MediaType mediaType;
    MimeType mimeType;
    MediaDetails mediaDetails;
    String sourceUrl;
    WpFeaturedmediaLinks links;

    WpFeaturedmedia({
        this.id,
        this.date,
        this.slug,
        this.type,
        this.link,
        this.title,
        this.author,
        this.caption,
        this.altText,
        this.mediaType,
        this.mimeType,
        this.mediaDetails,
        this.sourceUrl,
        this.links,
    });

    factory WpFeaturedmedia.fromJson(Map<String, dynamic> json) => WpFeaturedmedia(
        id: json["id"] == null ? null : json["id"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        slug: json["slug"] == null ? null : json["slug"],
        type: json["type"] == null ? null : wpFeaturedmediaTypeValues.map[json["type"]],
        link: json["link"] == null ? null : json["link"],
        title: json["title"] == null ? null : Guid.fromJson(json["title"]),
        author: json["author"] == null ? null : json["author"],
        caption: json["caption"] == null ? null : Guid.fromJson(json["caption"]),
        altText: json["alt_text"] == null ? null : json["alt_text"],
        mediaType: json["media_type"] == null ? null : mediaTypeValues.map[json["media_type"]],
        mimeType: json["mime_type"] == null ? null : mimeTypeValues.map[json["mime_type"]],
        mediaDetails: json["media_details"] == null ? null : MediaDetails.fromJson(json["media_details"]),
        sourceUrl: json["source_url"] == null ? null : json["source_url"],
        links: json["_links"] == null ? null : WpFeaturedmediaLinks.fromJson(json["_links"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "date": date == null ? null : date.toIso8601String(),
        "slug": slug == null ? null : slug,
        "type": type == null ? null : wpFeaturedmediaTypeValues.reverse[type],
        "link": link == null ? null : link,
        "title": title == null ? null : title.toJson(),
        "author": author == null ? null : author,
        "caption": caption == null ? null : caption.toJson(),
        "alt_text": altText == null ? null : altText,
        "media_type": mediaType == null ? null : mediaTypeValues.reverse[mediaType],
        "mime_type": mimeType == null ? null : mimeTypeValues.reverse[mimeType],
        "media_details": mediaDetails == null ? null : mediaDetails.toJson(),
        "source_url": sourceUrl == null ? null : sourceUrl,
        "_links": links == null ? null : links.toJson(),
    };
}

class Guid {
    String rendered;

    Guid({
        this.rendered,
    });

    factory Guid.fromJson(Map<String, dynamic> json) => Guid(
        rendered: json["rendered"] == null ? null : json["rendered"],
    );

    Map<String, dynamic> toJson() => {
        "rendered": rendered == null ? null : rendered,
    };
}

class WpFeaturedmediaLinks {
    List<About> self;
    List<About> collection;
    List<About> about;
    List<ReplyElement> author;
    List<ReplyElement> replies;

    WpFeaturedmediaLinks({
        this.self,
        this.collection,
        this.about,
        this.author,
        this.replies,
    });

    factory WpFeaturedmediaLinks.fromJson(Map<String, dynamic> json) => WpFeaturedmediaLinks(
        self: json["self"] == null ? null : List<About>.from(json["self"].map((x) => About.fromJson(x))),
        collection: json["collection"] == null ? null : List<About>.from(json["collection"].map((x) => About.fromJson(x))),
        about: json["about"] == null ? null : List<About>.from(json["about"].map((x) => About.fromJson(x))),
        author: json["author"] == null ? null : List<ReplyElement>.from(json["author"].map((x) => ReplyElement.fromJson(x))),
        replies: json["replies"] == null ? null : List<ReplyElement>.from(json["replies"].map((x) => ReplyElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "self": self == null ? null : List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": collection == null ? null : List<dynamic>.from(collection.map((x) => x.toJson())),
        "about": about == null ? null : List<dynamic>.from(about.map((x) => x.toJson())),
        "author": author == null ? null : List<dynamic>.from(author.map((x) => x.toJson())),
        "replies": replies == null ? null : List<dynamic>.from(replies.map((x) => x.toJson())),
    };
}

class About {
    String href;

    About({
        this.href,
    });

    factory About.fromJson(Map<String, dynamic> json) => About(
        href: json["href"] == null ? null : json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href == null ? null : href,
    };
}

class ReplyElement {
    bool embeddable;
    String href;

    ReplyElement({
        this.embeddable,
        this.href,
    });

    factory ReplyElement.fromJson(Map<String, dynamic> json) => ReplyElement(
        embeddable: json["embeddable"] == null ? null : json["embeddable"],
        href: json["href"] == null ? null : json["href"],
    );

    Map<String, dynamic> toJson() => {
        "embeddable": embeddable == null ? null : embeddable,
        "href": href == null ? null : href,
    };
}

class MediaDetails {
    int width;
    int height;
    String file;
    Sizes sizes;
    ImageMeta imageMeta;

    MediaDetails({
        this.width,
        this.height,
        this.file,
        this.sizes,
        this.imageMeta,
    });

    factory MediaDetails.fromJson(Map<String, dynamic> json) => MediaDetails(
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        file: json["file"] == null ? null : json["file"],
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        imageMeta: json["image_meta"] == null ? null : ImageMeta.fromJson(json["image_meta"]),
    );

    Map<String, dynamic> toJson() => {
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "file": file == null ? null : file,
        "sizes": sizes == null ? null : sizes.toJson(),
        "image_meta": imageMeta == null ? null : imageMeta.toJson(),
    };
}

class ImageMeta {
    String aperture;
    String credit;
    String camera;
    String caption;
    String createdTimestamp;
    String copyright;
    String focalLength;
    String iso;
    String shutterSpeed;
    String title;
    String orientation;
    List<dynamic> keywords;

    ImageMeta({
        this.aperture,
        this.credit,
        this.camera,
        this.caption,
        this.createdTimestamp,
        this.copyright,
        this.focalLength,
        this.iso,
        this.shutterSpeed,
        this.title,
        this.orientation,
        this.keywords,
    });

    factory ImageMeta.fromJson(Map<String, dynamic> json) => ImageMeta(
        aperture: json["aperture"] == null ? null : json["aperture"],
        credit: json["credit"] == null ? null : json["credit"],
        camera: json["camera"] == null ? null : json["camera"],
        caption: json["caption"] == null ? null : json["caption"],
        createdTimestamp: json["created_timestamp"] == null ? null : json["created_timestamp"],
        copyright: json["copyright"] == null ? null : json["copyright"],
        focalLength: json["focal_length"] == null ? null : json["focal_length"],
        iso: json["iso"] == null ? null : json["iso"],
        shutterSpeed: json["shutter_speed"] == null ? null : json["shutter_speed"],
        title: json["title"] == null ? null : json["title"],
        orientation: json["orientation"] == null ? null : json["orientation"],
        keywords: json["keywords"] == null ? null : List<dynamic>.from(json["keywords"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "aperture": aperture == null ? null : aperture,
        "credit": credit == null ? null : credit,
        "camera": camera == null ? null : camera,
        "caption": caption == null ? null : caption,
        "created_timestamp": createdTimestamp == null ? null : createdTimestamp,
        "copyright": copyright == null ? null : copyright,
        "focal_length": focalLength == null ? null : focalLength,
        "iso": iso == null ? null : iso,
        "shutter_speed": shutterSpeed == null ? null : shutterSpeed,
        "title": title == null ? null : title,
        "orientation": orientation == null ? null : orientation,
        "keywords": keywords == null ? null : List<dynamic>.from(keywords.map((x) => x)),
    };
}

class Sizes {
    AlmThumbnail medium;
    AlmThumbnail large;
    AlmThumbnail thumbnail;
    AlmThumbnail mediumLarge;
    AlmThumbnail almThumbnail;
    AlmThumbnail postThumbnail;
    AlmThumbnail blogSingleThumbnails;
    AlmThumbnail full;

    Sizes({
        this.medium,
        this.large,
        this.thumbnail,
        this.mediumLarge,
        this.almThumbnail,
        this.postThumbnail,
        this.blogSingleThumbnails,
        this.full,
    });

    factory Sizes.fromJson(Map<String, dynamic> json) => Sizes(
        medium: json["medium"] == null ? null : AlmThumbnail.fromJson(json["medium"]),
        large: json["large"] == null ? null : AlmThumbnail.fromJson(json["large"]),
        thumbnail: json["thumbnail"] == null ? null : AlmThumbnail.fromJson(json["thumbnail"]),
        mediumLarge: json["medium_large"] == null ? null : AlmThumbnail.fromJson(json["medium_large"]),
        almThumbnail: json["alm-thumbnail"] == null ? null : AlmThumbnail.fromJson(json["alm-thumbnail"]),
        postThumbnail: json["post-thumbnail"] == null ? null : AlmThumbnail.fromJson(json["post-thumbnail"]),
        blogSingleThumbnails: json["blog_single_thumbnails"] == null ? null : AlmThumbnail.fromJson(json["blog_single_thumbnails"]),
        full: json["full"] == null ? null : AlmThumbnail.fromJson(json["full"]),
    );

    Map<String, dynamic> toJson() => {
        "medium": medium == null ? null : medium.toJson(),
        "large": large == null ? null : large.toJson(),
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "medium_large": mediumLarge == null ? null : mediumLarge.toJson(),
        "alm-thumbnail": almThumbnail == null ? null : almThumbnail.toJson(),
        "post-thumbnail": postThumbnail == null ? null : postThumbnail.toJson(),
        "blog_single_thumbnails": blogSingleThumbnails == null ? null : blogSingleThumbnails.toJson(),
        "full": full == null ? null : full.toJson(),
    };
}

class AlmThumbnail {
    String file;
    int width;
    int height;
    MimeType mimeType;
    String sourceUrl;

    AlmThumbnail({
        this.file,
        this.width,
        this.height,
        this.mimeType,
        this.sourceUrl,
    });

    factory AlmThumbnail.fromJson(Map<String, dynamic> json) => AlmThumbnail(
        file: json["file"] == null ? null : json["file"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        mimeType: json["mime_type"] == null ? null : mimeTypeValues.map[json["mime_type"]],
        sourceUrl: json["source_url"] == null ? null : json["source_url"],
    );

    Map<String, dynamic> toJson() => {
        "file": file == null ? null : file,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "mime_type": mimeType == null ? null : mimeTypeValues.reverse[mimeType],
        "source_url": sourceUrl == null ? null : sourceUrl,
    };
}

enum MimeType { IMAGE_JPEG, IMAGE_PNG }

final mimeTypeValues = EnumValues({
    "image/jpeg": MimeType.IMAGE_JPEG,
    "image/png": MimeType.IMAGE_PNG
});

enum MediaType { IMAGE }

final mediaTypeValues = EnumValues({
    "image": MediaType.IMAGE
});

enum WpFeaturedmediaType { ATTACHMENT }

final wpFeaturedmediaTypeValues = EnumValues({
    "attachment": WpFeaturedmediaType.ATTACHMENT
});

class EmbeddedWpTerm {
    int id;
    String link;
    String name;
    String slug;
    Taxonomy taxonomy;
    WpTermLinks links;

    EmbeddedWpTerm({
        this.id,
        this.link,
        this.name,
        this.slug,
        this.taxonomy,
        this.links,
    });

    factory EmbeddedWpTerm.fromJson(Map<String, dynamic> json) => EmbeddedWpTerm(
        id: json["id"] == null ? null : json["id"],
        link: json["link"] == null ? null : json["link"],
        name: json["name"] == null ? null : json["name"],
        slug: json["slug"] == null ? null : json["slug"],
        taxonomy: json["taxonomy"] == null ? null : taxonomyValues.map[json["taxonomy"]],
        links: json["_links"] == null ? null : WpTermLinks.fromJson(json["_links"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "link": link == null ? null : link,
        "name": name == null ? null : name,
        "slug": slug == null ? null : slug,
        "taxonomy": taxonomy == null ? null : taxonomyValues.reverse[taxonomy],
        "_links": links == null ? null : links.toJson(),
    };
}

class WpTermLinks {
    List<About> self;
    List<About> collection;
    List<About> about;
    List<About> wpPostType;
    List<Cury> curies;

    WpTermLinks({
        this.self,
        this.collection,
        this.about,
        this.wpPostType,
        this.curies,
    });

    factory WpTermLinks.fromJson(Map<String, dynamic> json) => WpTermLinks(
        self: json["self"] == null ? null : List<About>.from(json["self"].map((x) => About.fromJson(x))),
        collection: json["collection"] == null ? null : List<About>.from(json["collection"].map((x) => About.fromJson(x))),
        about: json["about"] == null ? null : List<About>.from(json["about"].map((x) => About.fromJson(x))),
        wpPostType: json["wp:post_type"] == null ? null : List<About>.from(json["wp:post_type"].map((x) => About.fromJson(x))),
        curies: json["curies"] == null ? null : List<Cury>.from(json["curies"].map((x) => Cury.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "self": self == null ? null : List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": collection == null ? null : List<dynamic>.from(collection.map((x) => x.toJson())),
        "about": about == null ? null : List<dynamic>.from(about.map((x) => x.toJson())),
        "wp:post_type": wpPostType == null ? null : List<dynamic>.from(wpPostType.map((x) => x.toJson())),
        "curies": curies == null ? null : List<dynamic>.from(curies.map((x) => x.toJson())),
    };
}

class Cury {
    Name name;
    Href href;
    bool templated;

    Cury({
        this.name,
        this.href,
        this.templated,
    });

    factory Cury.fromJson(Map<String, dynamic> json) => Cury(
        name: json["name"] == null ? null : nameValues.map[json["name"]],
        href: json["href"] == null ? null : hrefValues.map[json["href"]],
        templated: json["templated"] == null ? null : json["templated"],
    );

    Map<String, dynamic> toJson() => {
        "name": name == null ? null : nameValues.reverse[name],
        "href": href == null ? null : hrefValues.reverse[href],
        "templated": templated == null ? null : templated,
    };
}

enum Href { HTTPS_API_W_ORG_REL }

final hrefValues = EnumValues({
    "https://api.w.org/{rel}": Href.HTTPS_API_W_ORG_REL
});

enum Name { WP }

final nameValues = EnumValues({
    "wp": Name.WP
});

enum Taxonomy { CATEGORY }

final taxonomyValues = EnumValues({
    "category": Taxonomy.CATEGORY
});

class NewsModelLinks {
    List<About> self;
    List<About> collection;
    List<About> about;
    List<ReplyElement> author;
    List<ReplyElement> replies;
    List<ReplyElement> wpFeaturedmedia;
    List<About> wpAttachment;
    List<LinksWpTerm> wpTerm;
    List<Cury> curies;

    NewsModelLinks({
        this.self,
        this.collection,
        this.about,
        this.author,
        this.replies,
        this.wpFeaturedmedia,
        this.wpAttachment,
        this.wpTerm,
        this.curies,
    });

    factory NewsModelLinks.fromJson(Map<String, dynamic> json) => NewsModelLinks(
        self: json["self"] == null ? null : List<About>.from(json["self"].map((x) => About.fromJson(x))),
        collection: json["collection"] == null ? null : List<About>.from(json["collection"].map((x) => About.fromJson(x))),
        about: json["about"] == null ? null : List<About>.from(json["about"].map((x) => About.fromJson(x))),
        author: json["author"] == null ? null : List<ReplyElement>.from(json["author"].map((x) => ReplyElement.fromJson(x))),
        replies: json["replies"] == null ? null : List<ReplyElement>.from(json["replies"].map((x) => ReplyElement.fromJson(x))),
        wpFeaturedmedia: json["wp:featuredmedia"] == null ? null : List<ReplyElement>.from(json["wp:featuredmedia"].map((x) => ReplyElement.fromJson(x))),
        wpAttachment: json["wp:attachment"] == null ? null : List<About>.from(json["wp:attachment"].map((x) => About.fromJson(x))),
        wpTerm: json["wp:term"] == null ? null : List<LinksWpTerm>.from(json["wp:term"].map((x) => LinksWpTerm.fromJson(x))),
        curies: json["curies"] == null ? null : List<Cury>.from(json["curies"].map((x) => Cury.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "self": self == null ? null : List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": collection == null ? null : List<dynamic>.from(collection.map((x) => x.toJson())),
        "about": about == null ? null : List<dynamic>.from(about.map((x) => x.toJson())),
        "author": author == null ? null : List<dynamic>.from(author.map((x) => x.toJson())),
        "replies": replies == null ? null : List<dynamic>.from(replies.map((x) => x.toJson())),
        "wp:featuredmedia": wpFeaturedmedia == null ? null : List<dynamic>.from(wpFeaturedmedia.map((x) => x.toJson())),
        "wp:attachment": wpAttachment == null ? null : List<dynamic>.from(wpAttachment.map((x) => x.toJson())),
        "wp:term": wpTerm == null ? null : List<dynamic>.from(wpTerm.map((x) => x.toJson())),
        "curies": curies == null ? null : List<dynamic>.from(curies.map((x) => x.toJson())),
    };
}

class LinksWpTerm {
    Taxonomy taxonomy;
    bool embeddable;
    String href;

    LinksWpTerm({
        this.taxonomy,
        this.embeddable,
        this.href,
    });

    factory LinksWpTerm.fromJson(Map<String, dynamic> json) => LinksWpTerm(
        taxonomy: json["taxonomy"] == null ? null : taxonomyValues.map[json["taxonomy"]],
        embeddable: json["embeddable"] == null ? null : json["embeddable"],
        href: json["href"] == null ? null : json["href"],
    );

    Map<String, dynamic> toJson() => {
        "taxonomy": taxonomy == null ? null : taxonomyValues.reverse[taxonomy],
        "embeddable": embeddable == null ? null : embeddable,
        "href": href == null ? null : href,
    };
}

enum PingStatus { CLOSED }

final pingStatusValues = EnumValues({
    "closed": PingStatus.CLOSED
});

enum Status { PUBLISH }

final statusValues = EnumValues({
    "publish": Status.PUBLISH
});

enum NewsModelType { NOTICIAS }

final newsModelTypeValues = EnumValues({
    "noticias": NewsModelType.NOTICIAS
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
