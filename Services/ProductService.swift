import Foundation

final class ProductService {

    private let session: URLSession
    private let networkLogger:
        NetworkLoggerProtocol

    init(
        session: URLSession = .shared,
        networkLogger:
            NetworkLoggerProtocol = NetworkLogger()
    ) {

        self.session = session
        self.networkLogger = networkLogger
    }

    func fetchProducts() async throws -> Data {

        guard let url = URL(
            string:
                "https://example.com/products"
        ) else {

            throw URLError(
                .badURL
            )
        }

        var request =
            URLRequest(url: url)

        request.httpMethod = "GET"

        let startTime =
            CFAbsoluteTimeGetCurrent()

        networkLogger.logRequest(
            request
        )

        do {

            let (data, response) =
                try await session.data(
                    for: request
                )

            guard let httpResponse =
                    response as? HTTPURLResponse else {

                throw URLError(
                    .badServerResponse
                )
            }

            let duration =
                CFAbsoluteTimeGetCurrent()
                - startTime

            networkLogger.logResponse(
                httpResponse,
                data: data,
                duration: duration
            )

            return data

        } catch {

            networkLogger.logError(
                error,
                request: request
            )

            throw error
        }
    }
}
