// To parse this JSON data, do
//
//     final getAllTurfResponse = getAllTurfResponseFromMap(jsonString);

import 'dart:convert';

class GetAllTurfResponse {
  GetAllTurfResponse({
    required this.message,
    this.data,
  });

  String message;
  List<GetAllTurfData>? data;

  factory GetAllTurfResponse.fromJson(String str) => GetAllTurfResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetAllTurfResponse.fromMap(Map<String, dynamic> json) => GetAllTurfResponse(
        message: json["message"] == null ? null : json["message"],
        data:
            json["data"] == null ? null : List<GetAllTurfData>.from(json["data"].map((x) => GetAllTurfData.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "message": message == null ? null : message,
        "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class GetAllTurfData {
  GetAllTurfData({
    required this.turfId,
    required this.turfName,
    required this.turfAddress,
    required this.turfPincode,
    required this.city,
    required this.area,
    required this.state,
    required this.country,
    required this.turfLat,
    required this.turfLong,
    required this.maintenanceDate,
    required this.maintenanceMode,
    required this.primaryMobile,
    required this.secondaryMobile,
    required this.emailAddress,
    required this.tblTurfSports,
    required this.tblTurfFacilities,
    required this.tblTurfImages,
    required this.tblTurfPrices,
  });

  String turfId;
  String turfName;
  String turfAddress;
  String turfPincode;
  String city;
  String area;
  String state;
  String country;
  String turfLat;
  String turfLong;
  String maintenanceDate;
  String maintenanceMode;
  String primaryMobile;
  String secondaryMobile;
  String emailAddress;
  List<TblTurfSport> tblTurfSports;
  List<TblTurfFacility> tblTurfFacilities;
  List<TblTurfImage> tblTurfImages;
  List<TblTurfPrice> tblTurfPrices;

  factory GetAllTurfData.fromJson(String str) => GetAllTurfData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetAllTurfData.fromMap(Map<String, dynamic> json) => GetAllTurfData(
        turfId: json["turf_id"] == null ? "" : json["turf_id"].toString(),
        turfName: json["turf_name"] == null ? "" : json["turf_name"].toString(),
        turfAddress: json["turf_address"] == null ? "" : json["turf_address"].toString(),
        turfPincode: json["turf_pincode"] == null ? "" : json["turf_pincode"].toString(),
        city: json["city"] == null ? "" : json["city"].toString(),
        area: json["area"] == null ? "" : json["area"].toString(),
        state: json["state"] == null ? "" : json["state"].toString(),
        country: json["country"] == null ? "" : json["country"].toString(),
        turfLat: json["turf_lat"] == null ? "" : json["turf_lat"].toString(),
        turfLong: json["turf_long"] == null ? "" : json["turf_long"].toString(),
        maintenanceDate: json["maintenance_date"] == null ? "" : json["maintenance_date"].toString(),
        maintenanceMode: json["maintenance_mode"] == null ? "" : json["maintenance_mode"].toString(),
        primaryMobile: json["primary_mobile"] == null ? "" : json["primary_mobile"].toString(),
        secondaryMobile: json["secondary_mobile"] == null ? "" : json["secondary_mobile"].toString(),
        emailAddress: json["email_address"] == null ? "" : json["email_address"].toString(),
        tblTurfSports: json["tbl_turf_sports"] == null
            ? []
            : List<TblTurfSport>.from(json["tbl_turf_sports"].map((x) => TblTurfSport.fromMap(x))),
        tblTurfFacilities: json["tbl_turf_facilities"] == null
            ? []
            : List<TblTurfFacility>.from(json["tbl_turf_facilities"].map((x) => TblTurfFacility.fromMap(x))),
        tblTurfImages: json["tbl_turf_images"] == null
            ? []
            : List<TblTurfImage>.from(json["tbl_turf_images"].map((x) => TblTurfImage.fromMap(x))),
        tblTurfPrices: json["tbl_turf_prices"] == null
            ? []
            : List<TblTurfPrice>.from(json["tbl_turf_prices"].map((x) => TblTurfPrice.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "turf_id": turfId == null ? null : turfId,
        "turf_name": turfName == null ? null : turfName,
        "turf_address": turfAddress == null ? null : turfAddress,
        "turf_pincode": turfPincode == null ? null : turfPincode,
        "city": city == null ? null : city,
        "area": area == null ? null : area,
        "state": state == null ? null : state,
        "country": country == null ? null : country,
        "turf_lat": turfLat == null ? null : turfLat,
        "turf_long": turfLong == null ? null : turfLong,
        "maintenance_date": maintenanceDate == null ? null : maintenanceDate,
        "maintenance_mode": maintenanceMode == null ? null : maintenanceMode,
        "primary_mobile": primaryMobile == null ? null : primaryMobile,
        "secondary_mobile": secondaryMobile == null ? null : secondaryMobile,
        "email_address": emailAddress == null ? null : emailAddress,
        "tbl_turf_sports": tblTurfSports == null ? null : List<dynamic>.from(tblTurfSports.map((x) => x.toMap())),
        "tbl_turf_facilities":
            tblTurfFacilities == null ? null : List<dynamic>.from(tblTurfFacilities.map((x) => x.toMap())),
        "tbl_turf_images": tblTurfImages == null ? null : List<dynamic>.from(tblTurfImages.map((x) => x.toMap())),
        "tbl_turf_prices": tblTurfPrices == null ? null : List<dynamic>.from(tblTurfPrices.map((x) => x.toMap())),
      };
}

class TblTurfFacility {
  TblTurfFacility({
    required this.facilityId,
  });

  String facilityId;

  factory TblTurfFacility.fromJson(String str) => TblTurfFacility.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TblTurfFacility.fromMap(Map<String, dynamic> json) => TblTurfFacility(
        facilityId: json["facility_id"] == null ? "" : json["facility_id"].toString(),
      );

  Map<String, dynamic> toMap() => {
        "facility_id": facilityId == null ? null : facilityIdValues.reverse[facilityId],
      };
}

enum FacilityId { CAFE, WASHROOM, THE_24_HOURS, SITTING }

final facilityIdValues = EnumValues({
  "cafe": FacilityId.CAFE,
  "sitting": FacilityId.SITTING,
  "24hours": FacilityId.THE_24_HOURS,
  "washroom": FacilityId.WASHROOM
});

class TblTurfImage {
  TblTurfImage({
    required this.imageUrl,
  });

  String imageUrl;

  factory TblTurfImage.fromJson(String str) => TblTurfImage.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TblTurfImage.fromMap(Map<String, dynamic> json) => TblTurfImage(
        imageUrl: json["image_url"] == null ? null : json["image_url"],
      );

  Map<String, dynamic> toMap() => {
        "image_url": imageUrl == null ? null : imageUrl,
      };
}

class TblTurfPrice {
  TblTurfPrice({
    required this.price,
  });

  int price;

  factory TblTurfPrice.fromJson(String str) => TblTurfPrice.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TblTurfPrice.fromMap(Map<String, dynamic> json) => TblTurfPrice(
        price: json["price"] == null ? null : json["price"],
      );

  Map<String, dynamic> toMap() => {
        "price": price == null ? null : price,
      };
}

class TblTurfSport {
  TblTurfSport({
    required this.sportId,
  });

  String sportId;

  factory TblTurfSport.fromJson(String str) => TblTurfSport.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TblTurfSport.fromMap(Map<String, dynamic> json) => TblTurfSport(
        sportId: json["sport_id"] == null ? "" : json["sport_id"].toString(),
      );

  Map<String, dynamic> toMap() => {
        "sport_id": sportId == null ? null : sportIdValues.reverse[sportId],
      };
}

enum SportId { CRICKET, FOOTBALL }

final sportIdValues = EnumValues({"cricket": SportId.CRICKET, "football": SportId.FOOTBALL});

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
