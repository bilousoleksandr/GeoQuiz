//
//  Country.swift
//
//
//  Created by Oleksandr Bilous on 17.12.2023.
//

import Foundation
import SwiftUI

public struct Country: Hashable, Codable {
    public let name: String
    public let code: String
    public let capital: String?
    public let currency: CurrencyCode?
    public let continent: Continent
}

extension Country: Identifiable {
    public var id: String {
        return name
    }

    public var image: Image? {
        let url = Bundle.module.url(forResource: code.lowercased(), withExtension: "png")
        let data = url.flatMap { try? Data(contentsOf: $0) }
        return data.flatMap { UIImage(data: $0) }.flatMap { Image(uiImage: $0) }
    }
}
