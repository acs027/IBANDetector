//
//  IbanCheck.swift
//  VisionTest
//
//  Created by ali cihan on 28.01.2025.
//

import Foundation

struct IBAN {
    let ibanString: String
    var countryCode: String {
        ibanString.prefix(2).uppercased()
    }
    var controlNumber: String?
    var bankCode: String {
        let startIndex = ibanString.index(ibanString.startIndex, offsetBy: 6)
        let endIndex = ibanString.index(startIndex, offsetBy: 3)
        return String(ibanString[startIndex..<endIndex])
    }
    var branchCode: String?
    var accountNumber: String?
    
    var bankName: String? {
        BankCode(rawValue: bankCode)?.name
    }
    
    init(string: String) {
        self.ibanString = string.uppercased().filter({!$0.isWhitespace})
    }
}
