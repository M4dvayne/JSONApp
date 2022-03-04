//
//  Model.swift
//  JSONApp
//
//  Created by Вячеслав Кремнев on 03.03.2022.
//


struct ZipCode: Decodable {
    
    let postCode: String?
    let country: String?
    let countryAbbreviation: String?
    let places: [Place]?

    enum CodingKeys: String, CodingKey {
        case postCode = "post code"
        case country
        case countryAbbreviation = "country abbreviation"
        case places
    }
}

struct Place: Decodable {
    let placeName: String
    let longitude: String
    let state: String
    let stateAbbreviation: String
    let latitude: String

    enum CodingKeys: String, CodingKey {
        case placeName = "place name"
        case longitude, state
        case stateAbbreviation = "state abbreviation"
        case latitude
    }
}

enum Link: String {
    case json = "https://api.zippopotam.us/us/90210"
}
