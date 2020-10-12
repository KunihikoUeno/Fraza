//
//  CategoryView.swift
//  Fraza3.0
//
//  Created by 上野邦彦 on 2020/10/11.
//

import SwiftUI

struct CategoryView: View {
    
    let categoryId: Int
    
    var body: some View {
        Text("Category \(categoryId)")
    }
    
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryId: 1)
    }
}
