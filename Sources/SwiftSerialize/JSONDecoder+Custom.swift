//
//  JSONDecoder+Extensions.swift
//  
//
//  Created by Dmytro Chapovskyi on 04.07.2023.
//

import Foundation

public extension JSONDecoder {
	
	static func custom(
		dateDecoding: JSONDecoder.DateDecodingStrategy = .iso8601,
		keyDecoding: JSONDecoder.KeyDecodingStrategy = .convertFromSnakeCase
	) -> JSONDecoder {
		let result = JSONDecoder()
		result.dateDecodingStrategy = dateDecoding
		result.keyDecodingStrategy = keyDecoding
		return result
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
