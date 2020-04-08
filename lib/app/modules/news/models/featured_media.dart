// To parse this JSON data, do
//
//     final featuredMedia = featuredMediaFromJson(jsonString);

import 'dart:convert';

FeaturedMedia featuredMediaFromJson(String str) => FeaturedMedia.fromJson(json.decode(str));

String featuredMediaToJson(FeaturedMedia data) => json.encode(data.toJson());

class FeaturedMedia {
    int id;
    DateTime date;
    DateTime dateGmt;
    Caption guid;
    DateTime modified;
    DateTime modifiedGmt;
    String slug;
    String status;
    String type;
    String link;
    Caption title;
    int author;
    String commentStatus;
    String pingStatus;
    String template;
    Meta meta;
    Caption description;
    Caption caption;
    String altText;
    String mediaType;
    String mimeType;
    MediaDetails mediaDetails;
    int post;
    String sourceUrl;
    Links links;

    FeaturedMedia({
        this.id,
        this.date,
        this.dateGmt,
        this.guid,
        this.modified,
        this.modifiedGmt,
        this.slug,
        this.status,
        this.type,
        this.link,
        this.title,
        this.author,
        this.commentStatus,
        this.pingStatus,
        this.template,
        this.meta,
        this.description,
        this.caption,
        this.altText,
        this.mediaType,
        this.mimeType,
        this.mediaDetails,
        this.post,
        this.sourceUrl,
        this.links,
    });

    factory FeaturedMedia.fromJson(Map<String, dynamic> json) => FeaturedMedia(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        dateGmt: DateTime.parse(json["date_gmt"]),
        guid: Caption.fromJson(json["guid"]),
        modified: DateTime.parse(json["modified"]),
        modifiedGmt: DateTime.parse(json["modified_gmt"]),
        slug: json["slug"],
        status: json["status"],
        type: json["type"],
        link: json["link"],
        title: Caption.fromJson(json["title"]),
        author: json["author"],
        commentStatus: json["comment_status"],
        pingStatus: json["ping_status"],
        template: json["template"],
        meta: Meta.fromJson(json["meta"]),
        description: Caption.fromJson(json["description"]),
        caption: Caption.fromJson(json["caption"]),
        altText: json["alt_text"],
        mediaType: json["media_type"],
        mimeType: json["mime_type"],
        mediaDetails: MediaDetails.fromJson(json["media_details"]),
        post: json["post"],
        sourceUrl: json["source_url"],
        links: Links.fromJson(json["_links"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "date": date.toIso8601String(),
        "date_gmt": dateGmt.toIso8601String(),
        "guid": guid.toJson(),
        "modified": modified.toIso8601String(),
        "modified_gmt": modifiedGmt.toIso8601String(),
        "slug": slug,
        "status": status,
        "type": type,
        "link": link,
        "title": title.toJson(),
        "author": author,
        "comment_status": commentStatus,
        "ping_status": pingStatus,
        "template": template,
        "meta": meta.toJson(),
        "description": description.toJson(),
        "caption": caption.toJson(),
        "alt_text": altText,
        "media_type": mediaType,
        "mime_type": mimeType,
        "media_details": mediaDetails.toJson(),
        "post": post,
        "source_url": sourceUrl,
        "_links": links.toJson(),
    };
}

class Caption {
    String rendered;

    Caption({
        this.rendered,
    });

    factory Caption.fromJson(Map<String, dynamic> json) => Caption(
        rendered: json["rendered"],
    );

    Map<String, dynamic> toJson() => {
        "rendered": rendered,
    };
}

class Links {
    List<About> self;
    List<About> collection;
    List<About> about;
    List<Author> author;
    List<Author> replies;

    Links({
        this.self,
        this.collection,
        this.about,
        this.author,
        this.replies,
    });

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: List<About>.from(json["self"].map((x) => About.fromJson(x))),
        collection: List<About>.from(json["collection"].map((x) => About.fromJson(x))),
        about: List<About>.from(json["about"].map((x) => About.fromJson(x))),
        author: List<Author>.from(json["author"].map((x) => Author.fromJson(x))),
        replies: List<Author>.from(json["replies"].map((x) => Author.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "self": List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": List<dynamic>.from(collection.map((x) => x.toJson())),
        "about": List<dynamic>.from(about.map((x) => x.toJson())),
        "author": List<dynamic>.from(author.map((x) => x.toJson())),
        "replies": List<dynamic>.from(replies.map((x) => x.toJson())),
    };
}

class About {
    String href;

    About({
        this.href,
    });

    factory About.fromJson(Map<String, dynamic> json) => About(
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
    };
}

class Author {
    bool embeddable;
    String href;

    Author({
        this.embeddable,
        this.href,
    });

    factory Author.fromJson(Map<String, dynamic> json) => Author(
        embeddable: json["embeddable"],
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "embeddable": embeddable,
        "href": href,
    };
}

class MediaDetails {
    int width;
    int height;
    String file;
    //Sizes sizes;
    ImageMeta imageMeta;

    MediaDetails({
        this.width,
        this.height,
        this.file,
        //this.sizes,
        this.imageMeta,
    });

    factory MediaDetails.fromJson(Map<String, dynamic> json) => MediaDetails(
        width: json["width"],
        height: json["height"],
        file: json["file"],
        //sizes: Sizes.fromJson(json["sizes"]),
        imageMeta: ImageMeta.fromJson(json["image_meta"]),
    );

    Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "file": file,
        //"sizes": sizes.toJson(),
        "image_meta": imageMeta.toJson(),
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
        aperture: json["aperture"],
        credit: json["credit"],
        camera: json["camera"],
        caption: json["caption"],
        createdTimestamp: json["created_timestamp"],
        copyright: json["copyright"],
        focalLength: json["focal_length"],
        iso: json["iso"],
        shutterSpeed: json["shutter_speed"],
        title: json["title"],
        orientation: json["orientation"],
        keywords: List<dynamic>.from(json["keywords"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "aperture": aperture,
        "credit": credit,
        "camera": camera,
        "caption": caption,
        "created_timestamp": createdTimestamp,
        "copyright": copyright,
        "focal_length": focalLength,
        "iso": iso,
        "shutter_speed": shutterSpeed,
        "title": title,
        "orientation": orientation,
        "keywords": List<dynamic>.from(keywords.map((x) => x)),
    };
}



class Meta {
    String spayEmail;

    Meta({
        this.spayEmail,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        spayEmail: json["spay_email"],
    );

    Map<String, dynamic> toJson() => {
        "spay_email": spayEmail,
    };
}
