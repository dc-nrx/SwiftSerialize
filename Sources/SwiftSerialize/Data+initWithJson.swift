//
//  Data+initWithJson.swift
//  
//
//  Created by Dmytro Chapovskyi on 11.04.2023.
//

import Foundation

public extension Data {
	
	/**
	 From a package, set bundle to `Bundle.module`.
	 */
	init(
		name: String,
		extension ext: String = "json",
		bundle: Bundle
	) throws {
		guard let url = bundle.url(forResource: name, withExtension: ext) else {
			throw CocoaError(.fileNoSuchFile)
		}
		self = try Data(contentsOf: url)
	}
}


public extension Decodable {
	
	init(
		name: String,
		extension ext: String = "json",
		bundle: Bundle,
		decoder: JSONDecoder = .custom()
	) throws {
		let data = try Data(name: name, extension: ext, bundle: bundle)
		self = try decoder.decode(Self.self, from: data)		
	}
}
