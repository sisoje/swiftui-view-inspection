import SwiftUI
import XCTest

final class TypeInfoTests: XCTestCase {
    func testTypeInfoBinding() {
        let t1 = TypeInfo(type: Binding<Int>.self)
        let b: Binding<Int> = .constant(1)
        let t2 = TypeInfo(object: b)
        XCTAssertEqual(t1.typename, t2.typename)
        XCTAssertEqual(t1.typename, "SwiftUI.Binding<Swift.Int>")
        XCTAssertEqual(t1.baseTypename, "SwiftUI.Binding")
        XCTAssertEqual(t1.generics.map(\.typename), ["Swift.Int"])
    }

    func testTypeInfoInt() {
        let t1 = TypeInfo(type: Int.self)
        let int = 0
        let t2 = TypeInfo(object: int)
        XCTAssertEqual(t1.typename, t2.typename)
        XCTAssertEqual(t1.typename, "Swift.Int")
        XCTAssertEqual(t1.baseTypename, "Swift.Int")
        XCTAssert(t1.generics.isEmpty)
    }

    func testGenerics() {
        XCTAssert(TypeInfo(typename: "Gen<").generics.isEmpty)
        XCTAssert(TypeInfo(typename: "Gen>").generics.isEmpty)
        XCTAssertEqual(TypeInfo(typename: "Gen<1>").generics.map(\.typename), ["1"])
        XCTAssertEqual(TypeInfo(typename: "Gen<1,2>").generics.map(\.typename), ["1", "2"])
        XCTAssertEqual(TypeInfo(typename: "Gen<1<2<5>>,2<3,4>>").generics.map(\.typename), ["1<2<5>>", "2<3,4>"])
    }
}
