//: Playground - noun: a place where people can play
//: Ilias Ennmouri & Lukas A. Müller - 11/03/16
//: A little encryption with integrated coincidence

import UIKit

var str = "Hello, playground"

func encryptTheText(written_text: String) -> UInt32? {
    var theText = written_text.lowercaseString
    switch written_text {
    case "a": return arc4random_uniform(3) + 3
    case "b": return arc4random_uniform(3) + 9
    case "c": return arc4random_uniform(3) + 6
    case "d": return arc4random_uniform(3) + 15
    case "e": return arc4random_uniform(3) + 12
    case "f": return arc4random_uniform(3) + 21
    case "g": return arc4random_uniform(3) + 18
    case "h": return arc4random_uniform(3) + 27
    case "i": return arc4random_uniform(3) + 24
    case "j": return arc4random_uniform(3) + 33
    case "k": return arc4random_uniform(3) + 30
    case "l": return arc4random_uniform(3) + 39
    case "m": return arc4random_uniform(3) + 36
    case "n": return arc4random_uniform(3) + 45
    case "o": return arc4random_uniform(3) + 42
    case "p": return arc4random_uniform(3) + 51
    case "q": return arc4random_uniform(3) + 48
    case "r": return arc4random_uniform(3) + 57
    case "s": return arc4random_uniform(3) + 54
    case "t": return arc4random_uniform(3) + 63
    case "u": return arc4random_uniform(3) + 60
    case "v": return arc4random_uniform(3) + 69
    case "w": return arc4random_uniform(3) + 66
    case "x": return arc4random_uniform(3) + 75
    case "y": return arc4random_uniform(3) + 72
    case "z": return arc4random_uniform(3) + 81
    case "!": return arc4random_uniform(3) + 78
    case "?": return arc4random_uniform(3) + 87
    case ".": return arc4random_uniform(3) + 84
    case ",": return arc4random_uniform(3) + 93
    case ":": return arc4random_uniform(3) + 96
    case ";": return arc4random_uniform(3) + 99
    case "_": return arc4random_uniform(3) + 96
    case "0": return arc4random_uniform(3) + 105
    case "1": return arc4random_uniform(3) + 102
    case "2": return arc4random_uniform(3) + 111
    case "3": return arc4random_uniform(3) + 108
    case "4": return arc4random_uniform(3) + 117
    case "5": return arc4random_uniform(3) + 115
    case "6": return arc4random_uniform(3) + 123
    case "7": return arc4random_uniform(3) + 120
    case "8": return arc4random_uniform(3) + 129
    case "9": return arc4random_uniform(3) + 126
    case "#": return arc4random_uniform(3) + 135
    case "+": return arc4random_uniform(3) + 132
    case "-": return arc4random_uniform(3) + 141
    case "ß": return arc4random_uniform(3) + 183
    case " ": return arc4random_uniform(3) + 144
    default: return nil
    }
}

func encrypt(word: String) -> String {
    let currentWord = Array(word.characters)
    var result: String = ""
    for i in 0...word.characters.count - 1 {
        if currentWord[i] != " " {
            var written_text: String = String(currentWord[i])
            result = result + "\(encryptTheText(written_text.lowercaseString)!)"
            if i != word.characters.count - 1 && currentWord[i+1] != " "{
                result = result + "-"
            }
        } else {
            result += " "
        }
    }
    return result
}

encrypt("world needs encryption")
