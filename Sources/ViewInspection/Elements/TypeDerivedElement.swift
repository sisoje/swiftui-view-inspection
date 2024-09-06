import SwiftUI

protocol TypeDerivedElement: ReflectionElement {
    associatedtype RelatedType
}

extension TypeDerivedElement {
    static var typeInfo: TypeInfo { TypeInfo(type: RelatedType.self) }
}

protocol CastableTypeDerivedElement: TypeDerivedElement {
    var castValue: RelatedType { get }
}

extension CastableTypeDerivedElement {
    var castValue: RelatedType { CastingUtils.memoryCast(node.object) }
}

struct SameBaseElement<T>: TypeDerivedElement {
    let node: ReflectionNode
    typealias RelatedType = T
    static func isValid(_ node: ReflectionNode) -> Bool { node.typeInfo.baseTypename == typeInfo.baseTypename }
}

protocol ModifierDerivedElement: ReflectionElement {
    static func makeModifiedContent() -> Any
}

extension ModifierDerivedElement {
    static func isValid(_ node: ReflectionNode) -> Bool {
        let modChild = ReflectionNode(object:  makeModifiedContent()).children[1]
        return node.typeInfo.typename == modChild.typeInfo.typename
    }
}

struct SameTypeElement<T>: CastableTypeDerivedElement {
    let node: ReflectionNode
    typealias RelatedType = T
    static func isValid(_ node: ReflectionNode) -> Bool { node.object is T }
}

struct ClosureElement<T>: CastableTypeDerivedElement {
    let node: ReflectionNode
    typealias RelatedType = T
    static func isValid(_ node: ReflectionNode) -> Bool { node.typeInfo.typename.hasSuffix(typeInfo.typename) }
}
