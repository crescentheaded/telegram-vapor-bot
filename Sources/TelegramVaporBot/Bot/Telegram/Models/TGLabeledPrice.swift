// Telegram-vapor-bot - Telegram Bot Swift SDK.

/**
 This object represents a portion of the price for goods or services.

 SeeAlso Telegram Bot API Reference:
 [LabeledPrice](https://core.telegram.org/bots/api#labeledprice)
 */
public final class TGLabeledPrice: Codable {

    /// Custom keys for coding/decoding `LabeledPrice` struct
    public enum CodingKeys: String, CodingKey {
        case label = "label"
        case amount = "amount"
    }

    /// Portion label
    public var label: String

    /// Price of the product in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
    public var amount: Int

    public init (label: String, amount: Int) {
        self.label = label
        self.amount = amount
    }
}
