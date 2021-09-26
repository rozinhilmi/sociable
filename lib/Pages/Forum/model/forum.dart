class Artikel {
    Artikel({
        this.status,
        this.data,
    });

    bool status;
    List<Datum> data;

    factory Artikel.fromJson(Map<String, dynamic> json) => Artikel(
        status: json["status"] == null ? null : json["status"],
        data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.questions,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String questions;
    dynamic createdAt;
    dynamic updatedAt;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"] == null ? null : json["id"],
        questions: json["questions"] == null ? null : json["questions"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "questions": questions == null ? null : questions,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
