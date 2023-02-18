// To parse this JSON data, do
//
//     final pais = paisFromJson(jsonString);

import 'dart:convert';

Pais paisFromJson(String str) => Pais.fromJson(json.decode(str));

String paisToJson(Pais data) => json.encode(data.toJson());

class Pais {
    Pais({
        required this.name,
        required this.topLevelDomain,
        required this.alpha2Code,
        required this.alpha3Code,
        required this.callingCodes,
        required this.capital,
        required this.altSpellings,
        required this.subregion,
        required this.region,
        required this.population,
        required this.latlng,
        required this.demonym,
        required this.area,
        required this.gini,
        required this.timezones,
        required this.borders,
        required this.nativeName,
        required this.numericCode,
        required this.flags,
        required this.currencies,
        required this.languages,
        required this.translations,
        required this.flag,
        required this.regionalBlocs,
        required this.cioc,
        required this.independent,
    });

    String name;
    List<String> topLevelDomain;
    String alpha2Code;
    String alpha3Code;
    List<String> callingCodes;
    String capital;
    List<String> altSpellings;
    String subregion;
    String region;
    int population;
    List<double> latlng;
    String demonym;
    double area;
    double gini;
    List<String> timezones;
    List<String> borders;
    String nativeName;
    String numericCode;
    Flags flags;
    List<Currency> currencies;
    List<Language> languages;
    Translations translations;
    String flag;
    List<RegionalBloc> regionalBlocs;
    String cioc;
    bool independent;

    factory Pais.fromJson(Map<String, dynamic> json) => Pais(
        name: json["name"],
        topLevelDomain: List<String>.from(json["topLevelDomain"].map((x) => x)),
        alpha2Code: json["alpha2Code"],
        alpha3Code: json["alpha3Code"],
        callingCodes: List<String>.from(json["callingCodes"].map((x) => x)),
        capital: json["capital"],
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        subregion: json["subregion"],
        region: json["region"],
        population: json["population"],
        latlng: List<double>.from(json["latlng"].map((x) => x)),
        demonym: json["demonym"],
        area: json["area"],
        gini: json["gini"]?.toDouble(),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        borders: List<String>.from(json["borders"].map((x) => x)),
        nativeName: json["nativeName"],
        numericCode: json["numericCode"],
        flags: Flags.fromJson(json["flags"]),
        currencies: List<Currency>.from(json["currencies"].map((x) => Currency.fromJson(x))),
        languages: List<Language>.from(json["languages"].map((x) => Language.fromJson(x))),
        translations: Translations.fromJson(json["translations"]),
        flag: json["flag"],
        regionalBlocs: List<RegionalBloc>.from(json["regionalBlocs"].map((x) => RegionalBloc.fromJson(x))),
        cioc: json["cioc"],
        independent: json["independent"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "topLevelDomain": List<dynamic>.from(topLevelDomain.map((x) => x)),
        "alpha2Code": alpha2Code,
        "alpha3Code": alpha3Code,
        "callingCodes": List<dynamic>.from(callingCodes.map((x) => x)),
        "capital": capital,
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "subregion": subregion,
        "region": region,
        "population": population,
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "demonym": demonym,
        "area": area,
        "gini": gini,
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "borders": List<dynamic>.from(borders.map((x) => x)),
        "nativeName": nativeName,
        "numericCode": numericCode,
        "flags": flags.toJson(),
        "currencies": List<dynamic>.from(currencies.map((x) => x.toJson())),
        "languages": List<dynamic>.from(languages.map((x) => x.toJson())),
        "translations": translations.toJson(),
        "flag": flag,
        "regionalBlocs": List<dynamic>.from(regionalBlocs.map((x) => x.toJson())),
        "cioc": cioc,
        "independent": independent,
    };
}

class Currency {
    Currency({
        required this.code,
        required this.name,
        required this.symbol,
    });

    String code;
    String name;
    String symbol;

    factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        code: json["code"],
        name: json["name"],
        symbol: json["symbol"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "symbol": symbol,
    };
}

class Flags {
    Flags({
        required this.svg,
        required this.png,
    });

    String svg;
    String png;

    factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        svg: json["svg"],
        png: json["png"],
    );

    Map<String, dynamic> toJson() => {
        "svg": svg,
        "png": png,
    };
}

class Language {
    Language({
        required this.iso6391,
        required this.iso6392,
        required this.name,
        required this.nativeName,
    });

    String iso6391;
    String iso6392;
    String name;
    String nativeName;

    factory Language.fromJson(Map<String, dynamic> json) => Language(
        iso6391: json["iso639_1"],
        iso6392: json["iso639_2"],
        name: json["name"],
        nativeName: json["nativeName"],
    );

    Map<String, dynamic> toJson() => {
        "iso639_1": iso6391,
        "iso639_2": iso6392,
        "name": name,
        "nativeName": nativeName,
    };
}

class RegionalBloc {
    RegionalBloc({
        required this.acronym,
        required this.name,
        required this.otherNames,
        this.otherAcronyms,
    });

    String acronym;
    String name;
    List<String> otherNames;
    List<String>? otherAcronyms;

    factory RegionalBloc.fromJson(Map<String, dynamic> json) => RegionalBloc(
        acronym: json["acronym"],
        name: json["name"],
        otherNames: List<String>.from(json["otherNames"].map((x) => x)),
        otherAcronyms: json["otherAcronyms"] == null ? [] : List<String>.from(json["otherAcronyms"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "acronym": acronym,
        "name": name,
        "otherNames": List<dynamic>.from(otherNames.map((x) => x)),
        "otherAcronyms": otherAcronyms == null ? [] : List<dynamic>.from(otherAcronyms!.map((x) => x)),
    };
}

class Translations {
    Translations({
        required this.br,
        required this.pt,
        required this.nl,
        required this.hr,
        required this.fa,
        required this.de,
        required this.es,
        required this.fr,
        required this.ja,
        required this.it,
        required this.hu,
    });

    String br;
    String pt;
    String nl;
    String hr;
    String fa;
    String de;
    String es;
    String fr;
    String ja;
    String it;
    String hu;

    factory Translations.fromJson(Map<String, dynamic> json) => Translations(
        br: json["br"],
        pt: json["pt"],
        nl: json["nl"],
        hr: json["hr"],
        fa: json["fa"],
        de: json["de"],
        es: json["es"],
        fr: json["fr"],
        ja: json["ja"],
        it: json["it"],
        hu: json["hu"],
    );

    Map<String, dynamic> toJson() => {
        "br": br,
        "pt": pt,
        "nl": nl,
        "hr": hr,
        "fa": fa,
        "de": de,
        "es": es,
        "fr": fr,
        "ja": ja,
        "it": it,
        "hu": hu,
    };
}
