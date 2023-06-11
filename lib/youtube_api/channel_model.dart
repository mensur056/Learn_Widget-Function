class ChannelInfo {
  String? kind;
  String? etag;
  PageInfo? pageInfo;
  List<Items>? items;

  ChannelInfo({this.kind, this.etag, this.pageInfo, this.items});

  ChannelInfo.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    etag = json['etag'];
    pageInfo = json['pageInfo'] != null ? PageInfo.fromJson(json['pageInfo']) : null;
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kind'] = kind;
    data['etag'] = etag;
    if (pageInfo != null) {
      data['pageInfo'] = pageInfo!.toJson();
    }
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PageInfo {
  int? totalResults;
  int? resultsPerPage;

  PageInfo({this.totalResults, this.resultsPerPage});

  PageInfo.fromJson(Map<String, dynamic> json) {
    totalResults = json['totalResults'];
    resultsPerPage = json['resultsPerPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalResults'] = totalResults;
    data['resultsPerPage'] = resultsPerPage;
    return data;
  }
}

class Items {
  String? kind;
  String? etag;
  String? id;

  Items({this.kind, this.etag, this.id});

  Items.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    etag = json['etag'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kind'] = kind;
    data['etag'] = etag;
    data['id'] = id;
    return data;
  }
}
