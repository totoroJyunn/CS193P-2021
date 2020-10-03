//
//  Array+Identifiable.swift
//  Memorize-4
//
//  Created by TotoroJ on 2020/10/2.
//

import Foundation
extension Array where Element: Identifiable{
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count{
            if self[index].id == matching.id{
                return index
            }
        }
        return nil
    }
}
