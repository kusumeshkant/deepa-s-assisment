class DashboardnewsModel {
  bool? status;
  int? statusCode;
  String? message;
  String? supportWhatsappNumber;
  double? extraIncome;
  int? totalLinks;
  int? totalClicks;
  int? todayClicks;
  String? topSource;
  String? topLocation;
  String? startTime;
  int? linksCreatedToday;
  int? appliedCampaign;
  Data? data;

  DashboardnewsModel(
      {this.status,
      this.statusCode,
      this.message,
      this.supportWhatsappNumber,
      this.extraIncome,
      this.totalLinks,
      this.totalClicks,
      this.todayClicks,
      this.topSource,
      this.topLocation,
      this.startTime,
      this.linksCreatedToday,
      this.appliedCampaign,
      this.data});

  DashboardnewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
    supportWhatsappNumber = json['support_whatsapp_number'];
    extraIncome = json['extra_income'];
    totalLinks = json['total_links'];
    totalClicks = json['total_clicks'];
    todayClicks = json['today_clicks'];
    topSource = json['top_source'];
    topLocation = json['top_location'];
    startTime = json['startTime'];
    linksCreatedToday = json['links_created_today'];
    appliedCampaign = json['applied_campaign'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    data['support_whatsapp_number'] = this.supportWhatsappNumber;
    data['extra_income'] = this.extraIncome;
    data['total_links'] = this.totalLinks;
    data['total_clicks'] = this.totalClicks;
    data['today_clicks'] = this.todayClicks;
    data['top_source'] = this.topSource;
    data['top_location'] = this.topLocation;
    data['startTime'] = this.startTime;
    data['links_created_today'] = this.linksCreatedToday;
    data['applied_campaign'] = this.appliedCampaign;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<RecentLinks>? recentLinks;
  List<TopLinks>? topLinks;
  OverallUrlChart? overallUrlChart;

  Data({this.recentLinks, this.topLinks, this.overallUrlChart});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['recent_links'] != null) {
      recentLinks = <RecentLinks>[];
      json['recent_links'].forEach((v) {
        recentLinks!.add(new RecentLinks.fromJson(v));
      });
    }
    if (json['top_links'] != null) {
      topLinks = <TopLinks>[];
      json['top_links'].forEach((v) {
        topLinks!.add(new TopLinks.fromJson(v));
      });
    }
    overallUrlChart = json['overall_url_chart'] != null
        ? new OverallUrlChart.fromJson(json['overall_url_chart'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recentLinks != null) {
      data['recent_links'] = this.recentLinks!.map((v) => v.toJson()).toList();
    }
    if (this.topLinks != null) {
      data['top_links'] = this.topLinks!.map((v) => v.toJson()).toList();
    }
    if (this.overallUrlChart != null) {
      data['overall_url_chart'] = this.overallUrlChart!.toJson();
    }
    return data;
  }
}

class RecentLinks {
  int? urlId;
  String? webLink;
  String? smartLink;
  String? title;
  int? totalClicks;
  String? originalImage;
  // Null? thumbnail;
  String? timesAgo;
  String? createdAt;
  String? domainId;
  // Null? urlPrefix;
  String? urlSuffix;
  String? app;
  bool? isFavourite;

  RecentLinks(
      {this.urlId,
      this.webLink,
      this.smartLink,
      this.title,
      this.totalClicks,
      this.originalImage,
      // this.thumbnail,
      this.timesAgo,
      this.createdAt,
      this.domainId,
      // this.urlPrefix,
      this.urlSuffix,
      this.app,
      this.isFavourite});

  RecentLinks.fromJson(Map<String, dynamic> json) {
    urlId = json['url_id'];
    webLink = json['web_link'];
    smartLink = json['smart_link'];
    title = json['title'];
    totalClicks = json['total_clicks'];
    originalImage = json['original_image'];
    // thumbnail = json['thumbnail'];
    timesAgo = json['times_ago'];
    createdAt = json['created_at'];
    domainId = json['domain_id'];
    // urlPrefix = json['url_prefix'];
    urlSuffix = json['url_suffix'];
    app = json['app'];
    isFavourite = json['is_favourite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url_id'] = this.urlId;
    data['web_link'] = this.webLink;
    data['smart_link'] = this.smartLink;
    data['title'] = this.title;
    data['total_clicks'] = this.totalClicks;
    data['original_image'] = this.originalImage;
    // data['thumbnail'] = this.thumbnail;
    data['times_ago'] = this.timesAgo;
    data['created_at'] = this.createdAt;
    data['domain_id'] = this.domainId;
    // data['url_prefix'] = this.urlPrefix;
    data['url_suffix'] = this.urlSuffix;
    data['app'] = this.app;
    data['is_favourite'] = this.isFavourite;
    return data;
  }
}

class TopLinks {
  int? urlId;
  String? webLink;
  String? smartLink;
  String? title;
  int? totalClicks;
  String? originalImage;
  // Null? thumbnail;
  String? timesAgo;
  String? createdAt;
  String? domainId;
  String? urlPrefix;
  String? urlSuffix;
  String? app;
  bool? isFavourite;

  TopLinks(
      {this.urlId,
      this.webLink,
      this.smartLink,
      this.title,
      this.totalClicks,
      this.originalImage,
      // this.thumbnail,
      this.timesAgo,
      this.createdAt,
      this.domainId,
      this.urlPrefix,
      this.urlSuffix,
      this.app,
      this.isFavourite});

  TopLinks.fromJson(Map<String, dynamic> json) {
    urlId = json['url_id'];
    webLink = json['web_link'];
    smartLink = json['smart_link'];
    title = json['title'];
    totalClicks = json['total_clicks'];
    originalImage = json['original_image'];
    // thumbnail = json['thumbnail'];
    timesAgo = json['times_ago'];
    createdAt = json['created_at'];
    domainId = json['domain_id'];
    urlPrefix = json['url_prefix'];
    urlSuffix = json['url_suffix'];
    app = json['app'];
    isFavourite = json['is_favourite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url_id'] = this.urlId;
    data['web_link'] = this.webLink;
    data['smart_link'] = this.smartLink;
    data['title'] = this.title;
    data['total_clicks'] = this.totalClicks;
    data['original_image'] = this.originalImage;
    // data['thumbnail'] = this.thumbnail;
    data['times_ago'] = this.timesAgo;
    data['created_at'] = this.createdAt;
    data['domain_id'] = this.domainId;
    data['url_prefix'] = this.urlPrefix;
    data['url_suffix'] = this.urlSuffix;
    data['app'] = this.app;
    data['is_favourite'] = this.isFavourite;
    return data;
  }
}

class OverallUrlChart {
  int? i0000;
  int? i0100;
  int? i0200;
  int? i0300;
  int? i0400;
  int? i0500;
  int? i0600;
  int? i0700;
  int? i0800;
  int? i0900;
  int? i1000;
  int? i1100;
  int? i1200;
  int? i1300;
  int? i1400;
  int? i1500;
  int? i1600;
  int? i1700;
  int? i1800;
  int? i1900;
  int? i2000;
  int? i2100;
  int? i2200;
  int? i2300;

  OverallUrlChart(
      {this.i0000,
      this.i0100,
      this.i0200,
      this.i0300,
      this.i0400,
      this.i0500,
      this.i0600,
      this.i0700,
      this.i0800,
      this.i0900,
      this.i1000,
      this.i1100,
      this.i1200,
      this.i1300,
      this.i1400,
      this.i1500,
      this.i1600,
      this.i1700,
      this.i1800,
      this.i1900,
      this.i2000,
      this.i2100,
      this.i2200,
      this.i2300});

  OverallUrlChart.fromJson(Map<String, dynamic> json) {
    i0000 = json['00:00'];
    i0100 = json['01:00'];
    i0200 = json['02:00'];
    i0300 = json['03:00'];
    i0400 = json['04:00'];
    i0500 = json['05:00'];
    i0600 = json['06:00'];
    i0700 = json['07:00'];
    i0800 = json['08:00'];
    i0900 = json['09:00'];
    i1000 = json['10:00'];
    i1100 = json['11:00'];
    i1200 = json['12:00'];
    i1300 = json['13:00'];
    i1400 = json['14:00'];
    i1500 = json['15:00'];
    i1600 = json['16:00'];
    i1700 = json['17:00'];
    i1800 = json['18:00'];
    i1900 = json['19:00'];
    i2000 = json['20:00'];
    i2100 = json['21:00'];
    i2200 = json['22:00'];
    i2300 = json['23:00'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['00:00'] = this.i0000;
    data['01:00'] = this.i0100;
    data['02:00'] = this.i0200;
    data['03:00'] = this.i0300;
    data['04:00'] = this.i0400;
    data['05:00'] = this.i0500;
    data['06:00'] = this.i0600;
    data['07:00'] = this.i0700;
    data['08:00'] = this.i0800;
    data['09:00'] = this.i0900;
    data['10:00'] = this.i1000;
    data['11:00'] = this.i1100;
    data['12:00'] = this.i1200;
    data['13:00'] = this.i1300;
    data['14:00'] = this.i1400;
    data['15:00'] = this.i1500;
    data['16:00'] = this.i1600;
    data['17:00'] = this.i1700;
    data['18:00'] = this.i1800;
    data['19:00'] = this.i1900;
    data['20:00'] = this.i2000;
    data['21:00'] = this.i2100;
    data['22:00'] = this.i2200;
    data['23:00'] = this.i2300;
    return data;
  }
}
