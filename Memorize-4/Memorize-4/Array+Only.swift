//
//  Array+Only.swift
//  Memorize-4
//
//  Created by TotoroJ on 2020/10/3.
//

import Foundation
extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
