//
//  Country.swift
//
//
//  Created by Oleksandr Bilous on 17.12.2023.
//

import Foundation

public struct Country: Hashable, Codable {
    public let name: String
    public let code: String
    public let capital: String?
    public let currency: CurrencyCode?
    public let continent: Continent
}

extension Country: Identifiable {
    public var id: String {
        return code
    }
}
