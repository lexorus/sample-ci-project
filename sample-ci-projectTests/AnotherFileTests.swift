import XCTest
@testable import sample_ci_project

final class AnotherFileTests: XCTestCase {
    func test_happifyingAString_shouldAppendHappySmile() {
        // GIVEN
        let sampleString = "Hello World"

        // WHEN
        let result = happify(sampleString)

        // THEN
        let expectedResult = sampleString + " 😀"
        XCTAssertEqual(result, expectedResult)
    }
}
