//
//  Price.swift
//  PassengerKit
//
//  Created by Ata Namvari on 2019-02-01.
//  Copyright © 2019 Ata Namvari. All rights reserved.
//

import Foundation

public struct Price: Decodable {
    public let value: Double
    public let currency: String

    public var localizedDescription: String? {
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = Locale.current
        numberFormatter.numberStyle = .currency
        numberFormatter.currencySymbol = getSymbol()
        
        return numberFormatter.string(for: self.value)
    }
    
    func getSymbol() -> String? {
        let locale = NSLocale(localeIdentifier: currency)
        
        return locale.displayName(forKey: .currencySymbol, value: currency)
    }
}
