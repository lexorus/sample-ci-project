/// Function that transfomrs a snakecased string into a lower
/// camelcased string
///
/// - Parameter snakecasedString: String in the snakecase format
/// - Returns: String in the lower camelcase format
func lowerCamelcasedString(from snakecasedString: String) -> String {
    return snakecasedString
        .components(separatedBy: "_")
        .enumerated()
        .map { $0.offset == 0 ? $0.element : $0.element.capitalized }
        .joined()
}
