import XCTest
@testable import sample_ci_project

final class SampleTests: XCTestCase {
    func test_transformingSnakecaseStringToCamelcased_returnsStringInTheRightFormat() {
        // GIVEN
        let snakecasedString = "attack_on_titan"

        // WHEN
        let lowerCamelcaseString = lowerCamelcasedString(from: snakecasedString)

        // THEN
        XCTAssertEqual(lowerCamelcaseString, "attackOnTitan")
    }

    func test_transformingArrayOfDifferentSnakecasedStringFormatsToCamelcase_returnsArrayOfStringsInTheRightFormat() {
        // GIVEN
        let arrayOfSnakecaseStrings = ["bravest_warriors", "the_blue_exorcist", "onePiece", "dragon_ball_z"]

        // WHEN
        let arrayOfLowerCamelcasedStrings = arrayOfSnakecaseStrings.map(lowerCamelcasedString)

        // THEN
        let expectedResult = ["bravestWarriors", "theBlueExorcist", "onePiece", "dragonBallZ"]
        XCTAssertEqual(arrayOfLowerCamelcasedStrings, expectedResult)
    }
}
