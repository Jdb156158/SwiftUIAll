//
//  LayoutListView.swift
//  SwiftUIAll
//
//  Created by db J on 2020/12/31.
//

import SwiftUI

struct LayoutListView: View {
    
    var body: some View {
        Text("batteryState: \(Status_Bar_Height+Default_Nav_Height)")
    }
}

struct LayoutListView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutListView()
    }
}
