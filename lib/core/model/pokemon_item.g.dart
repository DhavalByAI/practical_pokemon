// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonItem _$PokemonItemFromJson(Map<String, dynamic> json) => PokemonItem(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataBean.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: const NumConverter().fromJson(json['page']),
      pageSize: const NumConverter().fromJson(json['pageSize']),
      count: const NumConverter().fromJson(json['count']),
      totalCount: const NumConverter().fromJson(json['totalCount']),
    );

Map<String, dynamic> _$PokemonItemToJson(PokemonItem instance) =>
    <String, dynamic>{
      'data': instance.data,
      'page': const NumConverter().toJson(instance.page),
      'pageSize': const NumConverter().toJson(instance.pageSize),
      'count': const NumConverter().toJson(instance.count),
      'totalCount': const NumConverter().toJson(instance.totalCount),
    };

DataBean _$DataBeanFromJson(Map<String, dynamic> json) => DataBean(
      id: const StringConverter().fromJson(json['id']),
      name: const StringConverter().fromJson(json['name']),
      supertype: const StringConverter().fromJson(json['supertype']),
      subtypes: (json['subtypes'] as List<dynamic>?)
              ?.map(const StringConverter().fromJson)
              .toList() ??
          [],
      hp: const StringConverter().fromJson(json['hp']),
      types: (json['types'] as List<dynamic>?)
              ?.map(const StringConverter().fromJson)
              .toList() ??
          [],
      evolvesFrom: const StringConverter().fromJson(json['evolvesFrom']),
      rules: (json['rules'] as List<dynamic>?)
              ?.map(const StringConverter().fromJson)
              .toList() ??
          [],
      attacks: (json['attacks'] as List<dynamic>?)
              ?.map((e) => AttacksBean.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      weaknesses: (json['weaknesses'] as List<dynamic>?)
              ?.map((e) => WeaknessesBean.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      retreatCost: (json['retreatCost'] as List<dynamic>?)
              ?.map(const StringConverter().fromJson)
              .toList() ??
          [],
      convertedRetreatCost:
          const NumConverter().fromJson(json['convertedRetreatCost']),
      set: SetBean.fromJson(json['set'] as Map<String, dynamic>),
      number: const StringConverter().fromJson(json['number']),
      artist: const StringConverter().fromJson(json['artist']),
      rarity: const StringConverter().fromJson(json['rarity']),
      nationalPokedexNumbers: (json['nationalPokedexNumbers'] as List<dynamic>?)
              ?.map(const NumConverter().fromJson)
              .toList() ??
          [],
      legalities: json['legalities'] == null
          ? null
          : LegalitiesBean.fromJson(json['legalities'] as Map<String, dynamic>),
      images: ImagesBean.fromJson(json['images'] as Map<String, dynamic>),
      tcgplayer: json['tcgplayer'] == null
          ? null
          : TcgplayerBean.fromJson(json['tcgplayer'] as Map<String, dynamic>),
      cardmarket: json['cardmarket'] == null
          ? null
          : CardmarketBean.fromJson(json['cardmarket'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataBeanToJson(DataBean instance) => <String, dynamic>{
      'id': const StringConverter().toJson(instance.id),
      'name': const StringConverter().toJson(instance.name),
      'supertype': const StringConverter().toJson(instance.supertype),
      'subtypes':
          instance.subtypes.map(const StringConverter().toJson).toList(),
      'hp': const StringConverter().toJson(instance.hp),
      'types': instance.types.map(const StringConverter().toJson).toList(),
      'evolvesFrom': const StringConverter().toJson(instance.evolvesFrom),
      'rules': instance.rules.map(const StringConverter().toJson).toList(),
      'attacks': instance.attacks,
      'weaknesses': instance.weaknesses,
      'retreatCost':
          instance.retreatCost.map(const StringConverter().toJson).toList(),
      'convertedRetreatCost':
          const NumConverter().toJson(instance.convertedRetreatCost),
      'set': instance.set,
      'number': const StringConverter().toJson(instance.number),
      'artist': const StringConverter().toJson(instance.artist),
      'rarity': const StringConverter().toJson(instance.rarity),
      'nationalPokedexNumbers': instance.nationalPokedexNumbers
          .map(const NumConverter().toJson)
          .toList(),
      'legalities': instance.legalities,
      'images': instance.images,
      'tcgplayer': instance.tcgplayer,
      'cardmarket': instance.cardmarket,
    };

CardmarketBean _$CardmarketBeanFromJson(Map<String, dynamic> json) =>
    CardmarketBean(
      url: const StringConverter().fromJson(json['url']),
      updatedAt: const StringConverter().fromJson(json['updatedAt']),
      prices: PricesBean.fromJson(json['prices'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardmarketBeanToJson(CardmarketBean instance) =>
    <String, dynamic>{
      'url': const StringConverter().toJson(instance.url),
      'updatedAt': const StringConverter().toJson(instance.updatedAt),
      'prices': instance.prices,
    };

PricesBean _$PricesBeanFromJson(Map<String, dynamic> json) => PricesBean(
      averageSellPrice: const NumConverter().fromJson(json['averageSellPrice']),
      lowPrice: const NumConverter().fromJson(json['lowPrice']),
      trendPrice: const NumConverter().fromJson(json['trendPrice']),
      germanProLow: const NumConverter().fromJson(json['germanProLow']),
      suggestedPrice: const NumConverter().fromJson(json['suggestedPrice']),
      reverseHoloSell: const NumConverter().fromJson(json['reverseHoloSell']),
      reverseHoloLow: const NumConverter().fromJson(json['reverseHoloLow']),
      reverseHoloTrend: const NumConverter().fromJson(json['reverseHoloTrend']),
      lowPriceExPlus: const NumConverter().fromJson(json['lowPriceExPlus']),
      avg1: const NumConverter().fromJson(json['avg1']),
      avg7: const NumConverter().fromJson(json['avg7']),
      avg30: const NumConverter().fromJson(json['avg30']),
      reverseHoloAvg1: const NumConverter().fromJson(json['reverseHoloAvg1']),
      reverseHoloAvg7: const NumConverter().fromJson(json['reverseHoloAvg7']),
      reverseHoloAvg30: const NumConverter().fromJson(json['reverseHoloAvg30']),
    );

Map<String, dynamic> _$PricesBeanToJson(PricesBean instance) =>
    <String, dynamic>{
      'averageSellPrice':
          const NumConverter().toJson(instance.averageSellPrice),
      'lowPrice': const NumConverter().toJson(instance.lowPrice),
      'trendPrice': const NumConverter().toJson(instance.trendPrice),
      'germanProLow': const NumConverter().toJson(instance.germanProLow),
      'suggestedPrice': const NumConverter().toJson(instance.suggestedPrice),
      'reverseHoloSell': const NumConverter().toJson(instance.reverseHoloSell),
      'reverseHoloLow': const NumConverter().toJson(instance.reverseHoloLow),
      'reverseHoloTrend':
          const NumConverter().toJson(instance.reverseHoloTrend),
      'lowPriceExPlus': const NumConverter().toJson(instance.lowPriceExPlus),
      'avg1': const NumConverter().toJson(instance.avg1),
      'avg7': const NumConverter().toJson(instance.avg7),
      'avg30': const NumConverter().toJson(instance.avg30),
      'reverseHoloAvg1': const NumConverter().toJson(instance.reverseHoloAvg1),
      'reverseHoloAvg7': const NumConverter().toJson(instance.reverseHoloAvg7),
      'reverseHoloAvg30':
          const NumConverter().toJson(instance.reverseHoloAvg30),
    };

TcgplayerBean _$TcgplayerBeanFromJson(Map<String, dynamic> json) =>
    TcgplayerBean(
      url: const StringConverter().fromJson(json['url']),
      updatedAt: const StringConverter().fromJson(json['updatedAt']),
      prices: json['prices'] == null
          ? null
          : PricesBean.fromJson(json['prices'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TcgplayerBeanToJson(TcgplayerBean instance) =>
    <String, dynamic>{
      'url': const StringConverter().toJson(instance.url),
      'updatedAt': const StringConverter().toJson(instance.updatedAt),
      'prices': instance.prices,
    };

HolofoilBean _$HolofoilBeanFromJson(Map<String, dynamic> json) => HolofoilBean(
      low: const NumConverter().fromJson(json['low']),
      mid: const NumConverter().fromJson(json['mid']),
      high: const NumConverter().fromJson(json['high']),
      market: const NumConverter().fromJson(json['market']),
      directLow: json['directLow'],
    );

Map<String, dynamic> _$HolofoilBeanToJson(HolofoilBean instance) =>
    <String, dynamic>{
      'low': const NumConverter().toJson(instance.low),
      'mid': const NumConverter().toJson(instance.mid),
      'high': const NumConverter().toJson(instance.high),
      'market': const NumConverter().toJson(instance.market),
      'directLow': instance.directLow,
    };

ImagesBean _$ImagesBeanFromJson(Map<String, dynamic> json) => ImagesBean(
      small: const StringConverter().fromJson(json['small']),
      large: const StringConverter().fromJson(json['large']),
    );

Map<String, dynamic> _$ImagesBeanToJson(ImagesBean instance) =>
    <String, dynamic>{
      'small': const StringConverter().toJson(instance.small),
      'large': const StringConverter().toJson(instance.large),
    };

SetBean _$SetBeanFromJson(Map<String, dynamic> json) => SetBean(
      id: const StringConverter().fromJson(json['id']),
      name: const StringConverter().fromJson(json['name']),
      series: const StringConverter().fromJson(json['series']),
      printedTotal: const NumConverter().fromJson(json['printedTotal']),
      total: const NumConverter().fromJson(json['total']),
      legalities: json['legalities'] == null
          ? null
          : LegalitiesBean.fromJson(json['legalities'] as Map<String, dynamic>),
      ptcgoCode: const StringConverter().fromJson(json['ptcgoCode']),
      releaseDate: const StringConverter().fromJson(json['releaseDate']),
      updatedAt: const StringConverter().fromJson(json['updatedAt']),
      images: json['images'] == null
          ? null
          : ImagesBean.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetBeanToJson(SetBean instance) => <String, dynamic>{
      'id': const StringConverter().toJson(instance.id),
      'name': const StringConverter().toJson(instance.name),
      'series': const StringConverter().toJson(instance.series),
      'printedTotal': const NumConverter().toJson(instance.printedTotal),
      'total': const NumConverter().toJson(instance.total),
      'legalities': instance.legalities,
      'ptcgoCode': const StringConverter().toJson(instance.ptcgoCode),
      'releaseDate': const StringConverter().toJson(instance.releaseDate),
      'updatedAt': const StringConverter().toJson(instance.updatedAt),
      'images': instance.images,
    };

LegalitiesBean _$LegalitiesBeanFromJson(Map<String, dynamic> json) =>
    LegalitiesBean(
      unlimited: const StringConverter().fromJson(json['unlimited']),
      expanded: const StringConverter().fromJson(json['expanded']),
    );

Map<String, dynamic> _$LegalitiesBeanToJson(LegalitiesBean instance) =>
    <String, dynamic>{
      'unlimited': const StringConverter().toJson(instance.unlimited),
      'expanded': const StringConverter().toJson(instance.expanded),
    };

WeaknessesBean _$WeaknessesBeanFromJson(Map<String, dynamic> json) =>
    WeaknessesBean(
      type: const StringConverter().fromJson(json['type']),
      value: const StringConverter().fromJson(json['value']),
    );

Map<String, dynamic> _$WeaknessesBeanToJson(WeaknessesBean instance) =>
    <String, dynamic>{
      'type': const StringConverter().toJson(instance.type),
      'value': const StringConverter().toJson(instance.value),
    };

AttacksBean _$AttacksBeanFromJson(Map<String, dynamic> json) => AttacksBean(
      name: const StringConverter().fromJson(json['name']),
      cost: (json['cost'] as List<dynamic>)
          .map(const StringConverter().fromJson)
          .toList(),
      convertedEnergyCost:
          const NumConverter().fromJson(json['convertedEnergyCost']),
      damage: const StringConverter().fromJson(json['damage']),
      text: const StringConverter().fromJson(json['text']),
    );

Map<String, dynamic> _$AttacksBeanToJson(AttacksBean instance) =>
    <String, dynamic>{
      'name': const StringConverter().toJson(instance.name),
      'cost': instance.cost.map(const StringConverter().toJson).toList(),
      'convertedEnergyCost':
          const NumConverter().toJson(instance.convertedEnergyCost),
      'damage': const StringConverter().toJson(instance.damage),
      'text': const StringConverter().toJson(instance.text),
    };
