//
//  ContentView.swift
//  SwiftUIAll
//
//  Created by db J on 2020/12/31.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLeftNav = false
    @State var isRightNav = false
    
    init() {
        //修改导航栏文字颜色
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemBlue]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.systemBlue]
        UINavigationBar.appearance().tintColor = .systemBlue
        
    }
    
    
    var body: some View {
        TabView {
            
            //Tab1
            NavigationView {
                BaseListView()
                .navigationBarTitle(Text("基础控件"))
                .navigationBarItems(leading: leftNavButton, trailing: rightNavButton)
            }.tabItem {
                Image.init(systemName: "a.circle")
                Text("基础").font(.subheadline)
            }
            
            //Tab2
            NavigationView {
                LayoutListView()
                .navigationBarTitle(Text("布局"))
            }.tabItem {
                Image.init(systemName: "b.circle")
                Text("布局").font(.subheadline)
            }

            //Tab2
            NavigationView {
                Text("This is the second tab.")
            }.tabItem {
                Image.init(systemName: "b.circle")
                Text("绘图").font(.subheadline)
            }

            //Tab3
            NavigationView {
                Text("This is the second tab.")
            }.tabItem {
                Image.init(systemName: "c.circle")
                Text("设置").font(.subheadline)
            }
        }
    }
    
    var leftNavButton: some View {
        Button(action: { self.isLeftNav.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("Left"))
                .padding()
        }
        .sheet(isPresented: $isLeftNav) {
            VStack {
                Text("Hello, we are QiShare!").foregroundColor(.blue).font(.system(size: 32.0))

                HStack {
                    Spacer()
                    Spacer()
                    Text("an iOS Team. ").fontWeight(.black).foregroundColor(.purple)
                    Spacer()
                    Text("We are learning SwiftUI.").foregroundColor(.blue)
                    Spacer()
                }
            }
        }
    }
    
    var rightNavButton: some View {
        Button(action: { self.isRightNav.toggle() }) {
            Image(systemName: "paperplane.fill")
                .imageScale(.large)
                .accessibility(label: Text("Right"))
                .padding()
        }
        .sheet(isPresented: $isRightNav, onDismiss: {
            print("dissmiss RrightNav")
        }) {
            ZStack {
                Text("This is the Right Navi Button.")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
