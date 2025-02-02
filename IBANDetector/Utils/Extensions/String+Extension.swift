//
//  String+Extension.swift
//  VisionTest
//
//  Created by ali cihan on 30.01.2025.
//

import Foundation

extension String {
    func isIbanValid() -> Bool {
        let countryCode = self.prefix(2).uppercased()
        guard let ibanCharCount: Int = IBANCountry(rawValue: countryCode)?.count else { return false }
        if self.count != ibanCharCount {
            return false
        } else {
            let utf8Array = self.utf8.map({ $0 })
            let reArrangedArray = utf8Array[4..<utf8Array.count] + utf8Array[0..<4]
            let modCheck = reArrangedArray.reduce(0) { (r, u) -> Int in
                    let i = Int(u)
                return i > 64 ? ( 100 * r + i - 55 ) % 97 : ( 10 * r + i - 48 ) % 97
            }
            return modCheck == 1 ? true : false
        }
    }
}
