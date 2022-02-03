//
//  MyPropertyWrapper.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 19.12.2021.
//

@propertyWrapper
public struct MyCodingStyle {
    
    public enum Style: String {
        case CamelCase  = " "
        case SnakeCase  = "_"
        case KebabCase  = "-"
    }
    
    private var value: String
    private var style: Style
    
    public var wrappedValue: String {
        get {
            сoncatenations(array: getSequence())
        }
        set {
            value = newValue
        }
    }
    
    public var projectedValue: Style {
        get {
            style
        }
        set {
            style = newValue
        }
    }
    
    public init(wrappedValue: String, style: Style) {
        self.value = wrappedValue
        self.style = style
    }
    
    private func spacesBeforeLetters() -> String {
        var newString: String = ""
        
        value.forEach { char in
            if char.isUppercase {
                newString.append(" ")
            }
            newString.append(char)
        }
        
        if newString.first == " " {
            newString.removeFirst()
        }
        return newString
    }
    
    private func getSequence() -> [String] {
        let substrings: [String] = spacesBeforeLetters().split { separator in
            if separator == " " || separator == "-" || separator == "_" { return true }
            return false
        }.map { String($0).lowercased() }
        
        return substrings
    }
    
    private func сoncatenations(array: [String]) -> String {
        var output: String = ""
        
        switch style {
        case .CamelCase:
            array.forEach {
                output += $0.prefix(1).uppercased() + $0.dropFirst()
            }
            
        default:
            array.forEach { output += $0 + style.rawValue }
            if !output.isEmpty {
                output.removeLast()
            }
        }
        return output
    }
}

