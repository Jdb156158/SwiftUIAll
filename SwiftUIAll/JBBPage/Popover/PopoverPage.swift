//
//  PopoverPage.swift
//  SwiftUIAll
//
//  Created by db J on 2021/1/8.
//

import SwiftUI

struct PopoverPage: View {
    
    @State private var showingPopupA:Bool = false
    
    var body: some View {
        PopoverExample()
    }
}

struct PopoverExample: View {
    
    @State private var showingPopupA:Bool = false
    var body: some View {
        HStack {
            Button(action: {
                self.showingPopupA.toggle()
            }, label: {
                Text("弹出popup")
            }).popover(isPresented: self.$showingPopupA) {
                VStack {
                    Button(action: {
                        // Do something
                        self.showingPopupA = false
                    }) {
                        Text("选项 100")
                    }
                    Button(action: {
                        // Do something
                        self.showingPopupA = false
                    }) {
                        Text("选项 1002")
                    }
                    Button(action: {
                        // Do something
                        self.showingPopupA = false
                    }) {
                        Text("选项 1003")
                    }
                    
                }.padding()
                   // .background(Color.red)
            }
        }
      //  .frame( maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct PopoverPage_Previews: PreviewProvider {
    static var previews: some View {
        PopoverPage()
    }
}
