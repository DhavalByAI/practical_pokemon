import 'package:json_annotation/json_annotation.dart';
import 'package:practical_pokemon/core/api/json_converter.dart';

part 'pokemon_item.g.dart';

@JsonSerializable(converters: [
  StringConverter(),
  NumConverter(),
])
class PokemonItem {
  List<DataBean> data;
  num page;
  num pageSize;
  num count;
  num totalCount;

  factory PokemonItem.fromJson(Map<String, dynamic> json) =>
      _$PokemonItemFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonItemToJson(this);

  PokemonItem({
    required this.data,
    required this.page,
    required this.pageSize,
    required this.count,
    required this.totalCount,
  });
}

@JsonSerializable(converters: [
  StringConverter(),
  NumConverter(),
])
class DataBean {
  String id;
  String name;
  String supertype;
  @JsonKey(defaultValue: [], disallowNullValue: false)
  List<String> subtypes;
  String hp;
  @JsonKey(defaultValue: [], disallowNullValue: false)
  List<String> types;
  String evolvesFrom;
  @JsonKey(defaultValue: [], disallowNullValue: false)
  List<String> rules;
  @JsonKey(defaultValue: [], disallowNullValue: false)
  List<AttacksBean> attacks;
  @JsonKey(defaultValue: [], disallowNullValue: false)
  List<WeaknessesBean> weaknesses;
  @JsonKey(defaultValue: [], disallowNullValue: false)
  List<String> retreatCost;
  num convertedRetreatCost;
  SetBean set;
  String number;
  String artist;
  String rarity;
  @JsonKey(defaultValue: [], disallowNullValue: false)
  List<num> nationalPokedexNumbers;
  @JsonKey(defaultValue: null, disallowNullValue: false)
  LegalitiesBean? legalities;
  ImagesBean images;
  @JsonKey(defaultValue: null, disallowNullValue: false)
  TcgplayerBean? tcgplayer;
  @JsonKey(defaultValue: null, disallowNullValue: false)
  CardmarketBean? cardmarket;

  factory DataBean.fromJson(Map<String, dynamic> json) =>
      _$DataBeanFromJson(json);

  Map<String, dynamic> toJson() => _$DataBeanToJson(this);

  DataBean({
    required this.id,
    required this.name,
    required this.supertype,
    required this.subtypes,
    required this.hp,
    required this.types,
    required this.evolvesFrom,
    required this.rules,
    required this.attacks,
    required this.weaknesses,
    required this.retreatCost,
    required this.convertedRetreatCost,
    required this.set,
    required this.number,
    required this.artist,
    required this.rarity,
    required this.nationalPokedexNumbers,
    required this.legalities,
    required this.images,
    required this.tcgplayer,
    required this.cardmarket,
  });
}

@JsonSerializable(converters: [
  StringConverter(),
  NumConverter(),
])
class CardmarketBean {
  String url;
  String updatedAt;
  PricesBean prices;

  factory CardmarketBean.fromJson(Map<String, dynamic> json) =>
      _$CardmarketBeanFromJson(json);

  Map<String, dynamic> toJson() => _$CardmarketBeanToJson(this);

  CardmarketBean({
    required this.url,
    required this.updatedAt,
    required this.prices,
  });
}

@JsonSerializable(converters: [
  StringConverter(),
  NumConverter(),
])
class PricesBean {
  num averageSellPrice;
  num lowPrice;
  num trendPrice;
  num germanProLow;
  num suggestedPrice;
  num reverseHoloSell;
  num reverseHoloLow;
  num reverseHoloTrend;
  num lowPriceExPlus;
  num avg1;
  num avg7;
  num avg30;
  num reverseHoloAvg1;
  num reverseHoloAvg7;
  num reverseHoloAvg30;

  factory PricesBean.fromJson(Map<String, dynamic> json) =>
      _$PricesBeanFromJson(json);

  Map<String, dynamic> toJson() => _$PricesBeanToJson(this);

  PricesBean({
    required this.averageSellPrice,
    required this.lowPrice,
    required this.trendPrice,
    required this.germanProLow,
    required this.suggestedPrice,
    required this.reverseHoloSell,
    required this.reverseHoloLow,
    required this.reverseHoloTrend,
    required this.lowPriceExPlus,
    required this.avg1,
    required this.avg7,
    required this.avg30,
    required this.reverseHoloAvg1,
    required this.reverseHoloAvg7,
    required this.reverseHoloAvg30,
  });
}

@JsonSerializable(converters: [
  StringConverter(),
  NumConverter(),
])
class TcgplayerBean {
  String url;
  String updatedAt;
  @JsonKey(defaultValue: null, disallowNullValue: false)
  PricesBean? prices;

  factory TcgplayerBean.fromJson(Map<String, dynamic> json) =>
      _$TcgplayerBeanFromJson(json);

  Map<String, dynamic> toJson() => _$TcgplayerBeanToJson(this);

  TcgplayerBean({
    required this.url,
    required this.updatedAt,
    required this.prices,
  });
}

@JsonSerializable(converters: [
  StringConverter(),
  NumConverter(),
])
class HolofoilBean {
  num low;
  num mid;
  num high;
  num market;
  dynamic directLow;

  factory HolofoilBean.fromJson(Map<String, dynamic> json) =>
      _$HolofoilBeanFromJson(json);

  Map<String, dynamic> toJson() => _$HolofoilBeanToJson(this);

  HolofoilBean({
    required this.low,
    required this.mid,
    required this.high,
    required this.market,
    required this.directLow,
  });
}

@JsonSerializable(converters: [
  StringConverter(),
  NumConverter(),
])
class ImagesBean {
  String small;
  String large;

  factory ImagesBean.fromJson(Map<String, dynamic> json) =>
      _$ImagesBeanFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesBeanToJson(this);

  ImagesBean({
    required this.small,
    required this.large,
  });
}

@JsonSerializable(converters: [
  StringConverter(),
  NumConverter(),
])
class SetBean {
  String id;
  String name;
  String series;
  num printedTotal;
  num total;
  @JsonKey(defaultValue: null, disallowNullValue: false)
  LegalitiesBean? legalities;
  String ptcgoCode;
  String releaseDate;
  String updatedAt;
  @JsonKey(defaultValue: null, disallowNullValue: false)
  ImagesBean? images;

  factory SetBean.fromJson(Map<String, dynamic> json) =>
      _$SetBeanFromJson(json);

  Map<String, dynamic> toJson() => _$SetBeanToJson(this);

  SetBean({
    required this.id,
    required this.name,
    required this.series,
    required this.printedTotal,
    required this.total,
    required this.legalities,
    required this.ptcgoCode,
    required this.releaseDate,
    required this.updatedAt,
    required this.images,
  });
}

@JsonSerializable(converters: [
  StringConverter(),
  NumConverter(),
])
class LegalitiesBean {
  String unlimited;
  String expanded;

  factory LegalitiesBean.fromJson(Map<String, dynamic> json) =>
      _$LegalitiesBeanFromJson(json);

  Map<String, dynamic> toJson() => _$LegalitiesBeanToJson(this);

  LegalitiesBean({
    required this.unlimited,
    required this.expanded,
  });
}

@JsonSerializable(converters: [
  StringConverter(),
  NumConverter(),
])
class WeaknessesBean {
  String type;
  String value;

  factory WeaknessesBean.fromJson(Map<String, dynamic> json) =>
      _$WeaknessesBeanFromJson(json);

  Map<String, dynamic> toJson() => _$WeaknessesBeanToJson(this);

  WeaknessesBean({
    required this.type,
    required this.value,
  });
}

@JsonSerializable(converters: [
  StringConverter(),
  NumConverter(),
])
class AttacksBean {
  String name;
  List<String> cost;
  num convertedEnergyCost;
  String damage;
  String text;

  factory AttacksBean.fromJson(Map<String, dynamic> json) =>
      _$AttacksBeanFromJson(json);

  Map<String, dynamic> toJson() => _$AttacksBeanToJson(this);

  AttacksBean({
    required this.name,
    required this.cost,
    required this.convertedEnergyCost,
    required this.damage,
    required this.text,
  });
}
