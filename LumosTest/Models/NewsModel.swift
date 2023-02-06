import Foundation

// MARK: - Welcome
struct NewsModel: Codable {
    let hasErrors: Bool
    let items: [News]
}

// MARK: - Item
struct News: Codable {
    let modelTitle: String
    let modelImage: String
    let modelMark: ModelMark
    let modelDateTime, modelText: String

    enum CodingKeys: String, CodingKey {
        case modelTitle = "model_title"
        case modelImage = "model_image"
        case modelMark = "model_mark"
        case modelDateTime = "model_dateTime"
        case modelText = "model_text"
    }
}

enum ModelMark: String, Codable {
    case altcoins = "Altcoins"
    case analytics = "Analytics"
    case bitcoin = "Bitcoin"
    case blockchain = "Blockchain"
    case deFi = "DeFi"
    case ethereum = "Ethereum"
    case exchange = "Exchange"
    case finance = "Finance"
    case gameFi = "GameFi"
    case ico = "ICO"
    case legal = "Legal"
    case metaverse = "Metaverse"
    case mining = "Mining"
    case nft = "NFT"
    case other = "Other"
    case security = "Security"
}
