import Foundation

struct Anime: Decodable, Hashable{
    let mal_id: Int
    let title: String?
    let episodes: Int?
    let score: Double?
    let rank: Int?
    let season: String?
    let year: Int?
    
}

struct API : Decodable{
    var data : [Anime]
}
