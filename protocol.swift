protocol ExampleProtocol {
    var simpleDescription: String { get }
        mutating func adjust()
	
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
        var anotherProperty: Int = 69105
	    func adjust() {
	            simpleDescription += "  Now 100% adjusted."
		        
}

}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
        mutating func adjust() {
	        simpleDescription += " (adjusted)"
		    
}

}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
println(b)
println(bDescription)

extension Int: ExampleProtocol {
    var simpleDescription: String {
            return "The number \(self)"
	        
}
    mutating func adjust() {
            self += 42
	        
}

}
println(7.simpleDescription)

let protocolValue: ExampleProtocol = a
println(protocolValue.simpleDescription)
// protocolValue.anotherProperty  // Uncomment to see the error

