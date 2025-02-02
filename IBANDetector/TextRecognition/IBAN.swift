//
//  IbanCheck.swift
//  VisionTest
//
//  Created by ali cihan on 28.01.2025.
//

import Foundation

struct Iban {
    let iban: String
    var countryCode: String {
        iban.prefix(2).uppercased()
    }
    var controlNumber: String?
    var bankCode: String {
        let startIndex = iban.index(iban.startIndex, offsetBy: 6)
        let endIndex = iban.index(startIndex, offsetBy: 3)
        return String(iban[startIndex..<endIndex])
    }
    var branchCode: String?
    var accountNumber: String?
    
    var bankName: String? {
        BankCode(rawValue: bankCode)?.name
    }
    
    init(iban: String) {
        self.iban = iban.uppercased().filter({!$0.isWhitespace})
    }
}
