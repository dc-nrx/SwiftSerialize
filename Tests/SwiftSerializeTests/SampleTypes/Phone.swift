//
//  Phone.swift
//  
//
//  Created by Dmytro Chapovskyi on 04.07.2023.
//

import Foundation

struct Phone: Codable {
	var id: Int
	var title: String
	var description: String
	var price: Double
	var discountPercentage: Double
	var rating: Double
	var stock: Int
	var brand: String
	var category: String
	var thumbnail: String
	var images: [String]
}
