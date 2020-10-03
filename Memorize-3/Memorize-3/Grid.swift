//
//  Grid.swift
//  Memorize-3
//
//  Created by 沙茂龙 on 2020/10/2.
//

import SwiftUI

struct Grid<Item,ItemView>: View {
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
