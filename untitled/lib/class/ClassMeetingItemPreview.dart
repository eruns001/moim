

class MeetingItemTag {

  MeetingItemTag._();

  static const String fishing = "낚시";
  static const String golf = "골프";
  static const String climbing = "등산";
  static const String billiards = "당구";
  static const String surfing = "서핑";
  static const String bowling = "볼링";
}

///       title               tag
/// url   location
///       Number of people
///       frequency           price


class MeetingItemPreviewItem{
  final String title;
  late String tag;
  final String? imageUrl;
  final String? location;
  final String? numberOfPeople;
  final String? frequency;
  final String? price;

  MeetingItemPreviewItem({
    required this.title,
    required this.tag,
    this.imageUrl,
    this.location,
    this.numberOfPeople,
    this.frequency,
    this.price
  });
}



