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
		file: String,
		extension ext: String = "json",
		bundle: Bundle
	) throws {
		guard let url = bundle.url(forResource: file, withExtension: ext) else {
			throw CocoaError(.fileNoSuchFile)
		}
		self = try Data(contentsOf: url)
	}
}


public extension Decodable {
	
	init(
		file: String,
		extension ext: String = "json",
		bundle: Bundle,
		decoder: JSONDecoder = .custom()
	) throws {
		let data = try Data(file: file, extension: ext, bundle: bundle)
		self = try decoder.decode(Self.self, from: data)		
	}
}
