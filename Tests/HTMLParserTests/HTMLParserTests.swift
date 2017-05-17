import XCTest
@testable import HTMLParser

class HTMLParserTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(HTMLParser().text, "Hello, World!")
    }


    static var allTests : [(String, (HTMLParserTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
