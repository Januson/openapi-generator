//
// SpecialModelName.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

internal struct SpecialModelName: Codable {

    internal var specialPropertyName: Int64?

    internal init(specialPropertyName: Int64?) {
        self.specialPropertyName = specialPropertyName
    }

    internal enum CodingKeys: String, CodingKey {
        case specialPropertyName = "$special[property.name]"
    }

}
