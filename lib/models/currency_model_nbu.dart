
class CurrencyModelNbu {
    String? title;
    String? code;
    String? cbPrice;
    String? nbuBuyPrice;
    String? nbuCellPrice;
    String? date;

    CurrencyModelNbu({
        this.title,
        this.code,
        this.cbPrice,
        this.nbuBuyPrice,
        this.nbuCellPrice,
        this.date,
    });

    factory CurrencyModelNbu.fromJson(Map<String, dynamic> json) => CurrencyModelNbu(
        title: json["title"],
        code: json["code"],
        cbPrice: json["cb_price"],
        nbuBuyPrice: json["nbu_buy_price"],
        nbuCellPrice: json["nbu_cell_price"],
        date: json["date"]!,
    );
}


