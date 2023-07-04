//
//  JSONDecoder+Extensions.swift
//  
//
//  Created by Dmytro Chapovskyi on 04.07.2023.
//

import Foundation

public extension JSONDecoder {
	
	static func custom(
		date dataStrategy: JSONDecoder.DateDecodingStrategy = .iso8601,
		key keyStrategy: JSONDecoder.KeyDecodingStrategy = .convertFromSnakeCase
	) -> JSONDecoder {
		let result = JSONDecoder()
		result.dateDecodingStrategy = dataStrategy
		result.keyDecodingStrategy = keyStrategy
		return result
	}
	
	static func custom(
		dateFormat: String,
		key keyStrategy: JSONDecoder.KeyDecodingStrategy = .convertFromSnakeCase
	) -> JSONDecoder {
		custom(date: .formatted(.format(dateFormat)), key: keyStrategy)
	}

}

public extension DateFormatter {
	
	static func format(
		_ formatString: String
	) -> DateFormatter {
		
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = formatString
		return dateFormatter
	}
}
