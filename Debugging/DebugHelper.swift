import Foundation

enum DebugHelper {

    static func logMemoryAddress(
        of object: AnyObject
    ) {

        let address =
            Unmanaged.passUnretained(
                object
            ).toOpaque()

        AppLogger.shared.debug(
            "Object address: \(address)",
            category: .application
        )
    }

    static func logDeinit(
        _ objectName: String
    ) {

        #if DEBUG

        AppLogger.shared.debug(
            "\(objectName) deinitialized",
            category: .application
        )

        #endif
    }
}
