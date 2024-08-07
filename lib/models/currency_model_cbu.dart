class CurrencyModelCbu {
  int? id;
  String? code;
  String? ccy;
  String? ccyNmRu;
  String? ccyNmUz;
  String? ccyNmUzc;
  String? ccyNmEn;
  String? nominal;
  String? rate;
  String? diff;
  String? date;

  CurrencyModelCbu({
    this.id,
    this.code,
    this.ccy,
    this.ccyNmRu,
    this.ccyNmUz,
    this.ccyNmUzc,
    this.ccyNmEn,
    this.nominal,
    this.rate,
    this.diff,
    this.date,
  });

  factory CurrencyModelCbu.fromJson(Map<String, dynamic> json) =>
      CurrencyModelCbu(
        id: json["id"],
        code: json["Code"],
        ccy: json["Ccy"],
        ccyNmRu: json["CcyNm_RU"],
        ccyNmUz: json["CcyNm_UZ"],
        ccyNmUzc: json["CcyNm_UZC"],
        ccyNmEn: json["CcyNm_EN"],
        nominal: json["Nominal"],
        rate: json["Rate"],
        diff: json["Diff"],
        date: json["Date"],
      );

  // Map<String, dynamic> toJson() => {
  //     "id": id,
  //     "Code": code,
  //     "Ccy": ccy,
  //     "CcyNm_RU": ccyNmRu,
  //     "CcyNm_UZ": ccyNmUz,
  //     "CcyNm_UZC": ccyNmUzc,
  //     "CcyNm_EN": ccyNmEn,
  //     "Nominal": nominal,
  //     "Rate": rate,
  //     "Diff": diff,
  //     "Date": dateValues.reverse[date],
  // };
}
