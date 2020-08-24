//
//  ViewController.swift
//  testSdK
//
//  Created by Amr Ahmed on 8/9/20.
//  Copyright © 2020 Amr Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabl  : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let s = "_Welcome in Mallers App Chatbot_ _مرحبًا بك في مساعد مولرز الذكي_"
        
        let attributed = formatText(text: String(s))
         attributed.mutableString.replaceOccurrences(of: "-", with: "", options: NSString.CompareOptions(rawValue: 0), range: NSMakeRange(0, attributed.mutableString.length));
        myLabl.attributedText = attributed
    }
    
    
    func formatText (text : String) -> NSMutableAttributedString  {
        let attributedString = NSMutableAttributedString(string: text as String, attributes: [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 15.0)])
         var newText = replaceSpecialChars(text: attributedString,char: "*")
         newText = replaceSpecialChars(text: attributedString,char: "_")
         newText = replaceSpecialChars(text: attributedString,char: "~")
         return newText
    }
    

    func replaceSpecialChars(text: NSMutableAttributedString, char : Character) ->NSMutableAttributedString {
         var count = 0
         var startIndex = 0
         var endIndex = 0
        for i in 0..<text.string.count {
            if (text.string[text.string.index(text.string.startIndex, offsetBy: i)] == char) {
                   count = count + 1
               if (count % 2 == 0) {
                    endIndex = i
                formateAttributedString(startIndex: startIndex, endIndex: endIndex, text: text, char: char)
               } else {
                    startIndex = i
               }
           }
         }
         return text
       }
    

    func formateAttributedString(startIndex : Int , endIndex : Int, text:NSMutableAttributedString, char : Character)  {
        let start = text.string.index(text.string.startIndex, offsetBy: startIndex)
        let end = text.string.index(text.string.startIndex, offsetBy: startIndex + (endIndex - startIndex))
        let range = start..<end
        if char == "*" {
            let boldFontAttribute = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15.0)]
            let boldText = text.string[range]
            text.addAttributes(boldFontAttribute, range:text.mutableString.range(of: String(boldText)))
            text.replaceCharacters(in: NSRange(location: startIndex, length: 1), with: "-")
            text.replaceCharacters(in: NSRange(location: endIndex, length: 1), with: "-")
        }else if char == "_" {
            let italicFontAttribute = [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 15.0)]
            let boldText = text.string[range]
            text.addAttributes(italicFontAttribute, range: text.mutableString.range(of: String(boldText)))
            text.replaceCharacters(in: NSRange(location: startIndex, length: 1), with: "-")
            text.replaceCharacters(in: NSRange(location: endIndex, length: 1), with: "-")
        }else if char == "~" {
            let strikethrough = text.string[range]
            let somePartStringRange = (text.string as NSString).range(of: String(strikethrough))
            text.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: somePartStringRange)
            text.replaceCharacters(in: NSRange(location: startIndex, length: 1), with: "-")
            text.replaceCharacters(in: NSRange(location: endIndex, length: 1), with: "-")
        }
    }
    
}


extension String.UnicodeScalarView {

    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[Swift.min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< Swift.max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: Swift.max(0, Swift.min(length, r.lowerBound)),
                                            upper: Swift.min(length, Swift.max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }

}

extension String.Index {
    func distance<S: StringProtocol>(in string: S) -> Int { string.distance(from: string.startIndex, to: self) }
}
