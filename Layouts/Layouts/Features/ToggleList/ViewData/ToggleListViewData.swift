//
//  ToggleListViewData.swift
//  Layouts
//
//  Created by Jefferson Lalor on 30/10/21.
//

import Foundation

class ToggleListViewData: ObservableObject {
    @Published var rows: [Bool] {
        didSet {
            if rows.filter({ $0 == true }).count > 1 {
                rows = oldValue.enumerated().map {
                    $0.element == rows[$0.offset] ? false : rows[$0.offset]
                }
            }
        }
    }
    
    public init(rows: [Bool] = [false, false, false, false, false]) {
        self.rows = rows
    }
}
