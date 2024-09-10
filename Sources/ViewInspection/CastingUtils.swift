enum CastingUtils {    
    static func memoryCast<T>(_ x: Any, _ t: T.Type = T.self) -> T {
        withUnsafePointer(to: x) {
            $0.withMemoryRebound(to: T.self, capacity: 1) { $0.pointee }
        }
    }
}
