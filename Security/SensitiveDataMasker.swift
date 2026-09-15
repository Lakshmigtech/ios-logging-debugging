import Foundation

struct SensitiveDataMasker {

    static func mask(
        _ value: String,
        visibleCharacters: Int = 4
    ) -> String {

        guard value.count > visibleCharacters else {
            return "****"
        }

        let prefix = value.prefix(
            visibleCharacters
        )

        return "\(prefix)****"
    }

    static func maskAuthorizationHeader(
        _ value: String
    ) -> String {

        guard value.lowercased()
            .hasPrefix("bearer ") else {

            return "****"
        }

        let token = value.dropFirst(7)

        return "Bearer \(mask(String(token)))"
    }
}
