namespace org.starj.cds.demo;

type GeoPoint     : String;
type Timezone     : String;
type CountryCode  : String(2);
type LanguageCode : String(2);

entity Countries {
  official_language   : LanguageCode;
  key country_code    : String(2);
  iso3_code           : String(3);
  onu_code            : Integer;
  name_en             : String;
  name_fr             : String;
  name_sp             : String;
  geo_point           : GeoPoint;
}

entity Populations {
  key id              : Integer;
  name                : String;
  ascii_name          : String;
  alternate_name      : String;
  feature_class       : String(1);
  feature_code        : String;
  country_code        : CountryCode;
  country             : Association to Countries
                        on country_code = country.country_code;
  population          : Integer;
  elevation           : Integer;
  timezone            : Timezone;
  geo_point           : GeoPoint;
}


