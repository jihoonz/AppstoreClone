//
//  SearchResult.swift
//  AppStoreClone
//
//  Created by Ji.finup on 2021/09/14.
//

import Foundation

struct SearchResult {
    let appletvScreenshotUrls: [String]
    let screenshotUrls: [String]
    let ipadScreenshotUrls: [String]
    let artworkUrl60: String
    let artworkUrl512: String
    let artworkUrl100: String
    let artistViewUrl: String
    let supportedDevices: [String]
    let advisories: String
    let isGameCenterEnabled: Bool
    let kind: String
    let features: [String]
    let minimumOsVersion: String
    let trackCensoredName: String
    let languageCodesISO2A: [String]
    let fileSizeBytes: String
    let formattedPrice: String
    let contentAdvisoryRating: String
    let averageUserRatingForCurrentVersion: Double
    let userRatingCountForCurrentVersion: Int
    let trackViewUrl: String
    let trackContentRating: String
    let averageUserRating: Double
    let genreIds: [String]
    let trackId: Int
    let trackName: String
    let releaseDate: String
    let sellerUrl: String
    let sellerName: String
    let primaryGenreName: String
    let isVppDeviceBasedLicensingEnabled: Bool
    let currentVersionReleaseDate: String
    let releaseNotes: String
    let primaryGenreId: Int
    let currency: String
    let version: String
    let wrapperType: String
    let artistId: Int
    let artistName: String
    let genres: [String]
    let price: Double
    let description: String
    let bundleId: String
    let userRatingCount: Int
}

extension SearchResult: Decodable {
    enum CodingKeys: String, CodingKey {
        case appletvScreenshotUrls
        case screenshotUrls
        case ipadScreenshotUrls
        case artworkUrl60
        case artworkUrl512
        case artworkUrl100
        case artistViewUrl
        case supportedDevices
        case advisories
        case isGameCenterEnabled
        case kind
        case features
        case minimumOsVersion
        case trackCensoredName
        case languageCodesISO2A
        case fileSizeBytes
        case formattedPrice
        case contentAdvisoryRating
        case averageUserRatingForCurrentVersion
        case userRatingCountForCurrentVersion
        case averageUserRating
        case trackViewUrl
        case trackContentRating
        case genreIds
        case trackId
        case trackName
        case releaseDate
        case sellerUrl
        case sellerName
        case primaryGenreName
        case isVppDeviceBasedLicensingEnabled
        case currentVersionReleaseDate
        case releaseNotes
        case primaryGenreId
        case currency
        case version
        case wrapperType
        case artistId
        case artistName
        case genres
        case price
        case description
        case bundleId
        case userRatingCount
    }

    init(from decoder: Decoder) throws {
        let container = try? decoder.container(keyedBy: CodingKeys.self)

        appletvScreenshotUrls = (try? container?.decode([String].self, forKey: .appletvScreenshotUrls)) ?? .init()
        screenshotUrls = (try? container?.decode([String].self, forKey: .screenshotUrls)) ?? .init()
        ipadScreenshotUrls = (try? container?.decode([String].self, forKey: .ipadScreenshotUrls)) ?? .init()
        artworkUrl60 = (try? container?.decode(String.self, forKey: .artworkUrl60)) ?? .init()
        artworkUrl512 = (try? container?.decode(String.self, forKey: .artworkUrl512)) ?? .init()
        artworkUrl100 = (try? container?.decode(String.self, forKey: .artworkUrl100)) ?? .init()
        artistViewUrl = (try? container?.decode(String.self, forKey: .artistViewUrl)) ?? .init()
        supportedDevices = (try? container?.decode([String].self, forKey: .supportedDevices)) ?? .init()
        advisories = (try? container?.decode(String.self, forKey: .advisories)) ?? .init()
        isGameCenterEnabled = (try? container?.decode(Bool.self, forKey: .isGameCenterEnabled)) ?? .init()
        kind = (try? container?.decode(String.self, forKey: .kind)) ?? .init()
        features = (try? container?.decode([String].self, forKey: .features)) ?? .init()
        minimumOsVersion = (try? container?.decode(String.self, forKey: .minimumOsVersion)) ?? .init()
        trackCensoredName = (try? container?.decode(String.self, forKey: .trackCensoredName)) ?? .init()
        languageCodesISO2A = (try? container?.decode([String].self, forKey: .languageCodesISO2A)) ?? .init()
        fileSizeBytes = (try? container?.decode(String.self, forKey: .fileSizeBytes)) ?? .init()
        formattedPrice = (try? container?.decode(String.self, forKey: .formattedPrice)) ?? .init()
        contentAdvisoryRating = (try? container?.decode(String.self, forKey: .contentAdvisoryRating)) ?? .init()
        averageUserRatingForCurrentVersion = (try? container?.decode(Double.self, forKey: .averageUserRatingForCurrentVersion)) ?? .init()
        userRatingCountForCurrentVersion = (try? container?.decode(Int.self, forKey: .userRatingCountForCurrentVersion)) ?? .init()
        averageUserRating = (try? container?.decode(Double.self, forKey: .averageUserRating)) ?? .init()
        trackViewUrl = (try? container?.decode(String.self, forKey: .trackViewUrl)) ?? .init()
        trackContentRating = (try? container?.decode(String.self, forKey: .trackContentRating)) ?? .init()
        genreIds = (try? container?.decode([String].self, forKey: .genreIds)) ?? .init()
        trackId = (try? container?.decode(Int.self, forKey: .trackId)) ?? .init()
        trackName = (try? container?.decode(String.self, forKey: .trackName)) ?? .init()
        releaseDate = (try? container?.decode(String.self, forKey: .releaseDate)) ?? .init()
        sellerUrl = (try? container?.decode(String.self, forKey: .sellerUrl)) ?? .init()
        sellerName = (try? container?.decode(String.self, forKey: .sellerName)) ?? .init()
        primaryGenreName = (try? container?.decode(String.self, forKey: .primaryGenreName)) ?? .init()
        isVppDeviceBasedLicensingEnabled = (try? container?.decode(Bool.self, forKey: .screenshotUrls)) ?? .init()
        currentVersionReleaseDate = (try? container?.decode(String.self, forKey: .currentVersionReleaseDate)) ?? .init()
        releaseNotes = (try? container?.decode(String.self, forKey: .releaseNotes)) ?? .init()
        primaryGenreId = (try? container?.decode(Int.self, forKey: .primaryGenreId)) ?? .init()
        currency = (try? container?.decode(String.self, forKey: .currency)) ?? .init()
        version = (try? container?.decode(String.self, forKey: .version)) ?? .init()
        wrapperType = (try? container?.decode(String.self, forKey: .wrapperType)) ?? .init()
        artistId = (try? container?.decode(Int.self, forKey: .artistId)) ?? .init()
        artistName = (try? container?.decode(String.self, forKey: .artistName)) ?? .init()
        genres = (try? container?.decode([String].self, forKey: .genres)) ?? .init()
        price = (try? container?.decode(Double.self, forKey: .price)) ?? .init()
        description = (try? container?.decode(String.self, forKey: .description)) ?? .init()
        bundleId = (try? container?.decode(String.self, forKey: .bundleId)) ?? .init()
        userRatingCount = (try? container?.decode(Int.self, forKey: .userRatingCount)) ?? .init()
    }
}
