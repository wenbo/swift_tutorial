func repeat<Item>(item: Item, times: Int) -> [Item] {
    var result = [Item]()
        for i in 0..<times {
	         result.append(item)
}
    return result
}
println(repeat("knock", 4))




func anyCommonElements <T, U where T: SequenceType, U: SequenceType, T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element> (lhs: T, rhs: U) -> Bool {
    for lhsItem in lhs {
            for rhsItem in rhs {
	                if lhsItem == rhsItem {
			                return true
}
}
}
    return false
}
anyCommonElements([1, 2, 3], [3])


// Reimplement the Swift standard library's optional type
enum OptionalValue<T> {
    case None
        case Some(T)
	}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)
println(possibleInteger)