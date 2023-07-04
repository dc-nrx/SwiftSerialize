import XCTest
@testable import SwiftSerialize

final class SwiftSerializeTests: XCTestCase {
    
	func testPhone_fromJson() throws {
		_ = try Phone(file: "Iphone9Info", bundle: .module)
    }
}
