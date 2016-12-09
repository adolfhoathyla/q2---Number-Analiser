//
//  NumberAnalyse.swift
//  Number Analyser
//
//  Created by Adolfho Athyla on 04/12/16.
//  Copyright © 2016 a7hyla. All rights reserved.
//

import UIKit

class NumberAnalyse: NSObject {
    static func isEsoterico(number: Int) -> Bool {
        return ((number % 3 == 0) && (number % 5 == 0))
    }
    
    static func isCetico(number: Int) -> Bool {
        return !isEsoterico(number: number)
    }
    
    static func isPrimo(number: Int) -> Bool {
        var count = 0
        if number > 0 {
            for i in 1...number {
                if number % i == 0 {
                    count += 1
                }
            }
        }
        return count == 2
    }
}
