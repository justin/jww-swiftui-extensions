import XCTest
@testable import JWWSwiftUI

/// Tests to validate the `Person` type.
final class PersonTests: XCTestCase {
    private var sut: Person?

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Person(name: "Justin Williams")
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }

    /// Validate initialization
    func testInit() throws {
        let expectedName = "Justin Williams"

        let result = try XCTUnwrap(sut)

        XCTAssertEqual(result.name, expectedName)
    }
}
