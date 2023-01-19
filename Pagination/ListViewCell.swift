//
//  TableViewCell.swift
//  tmpAppForm
//
//  Created by Aviram on 18/1/23.
//

import SwiftUI

struct ListViewCell: View {
    var item : String
    
    var body: some View {
        Text(item)
    }
}

struct ListViewCell_Previews: PreviewProvider {
    static var str = "Hello"
    static var previews: some View {
        ListViewCell(item: str)
    }
}
