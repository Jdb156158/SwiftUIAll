//
//  ContentView.swift
//  SwiftUIAll
//
//  Created by db J on 2020/12/31.
//

import SwiftUI

struct ContentView: View {
    
    enum Tabs{
        case tab1, tab2
    }
    
    @State var isLeftNav = false
    @State var isRightNav = false
    @State var tabSelection: Tabs = .tab1
    
    func returnNaviBarTitle(tabSelection: Tabs) -> String{
        switch tabSelection{
            case .tab1: return "基础控件"
            case .tab2: return "Tab2"
        }
    }
    
    func returnNaviBarHidden(tabSelection: Tabs) -> Bool{
        switch tabSelection{
            case .tab1: return false
            case .tab2: return true
        }
    }
    
    init() {
        //修改导航栏文字颜色
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.systemBlue]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.systemBlue]
        UINavigationBar.appearance().tintColor = .systemBlue
        
        //修改底部tabbar的背景颜色
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    
    var body: some View {
        NavigationView{
            TabView(selection: $tabSelection){
                Tab1View()
                .tabItem {
                    Image.init(systemName: "a.circle")
                    Text("基础").font(.subheadline)
                }
                .tag(Tabs.tab1)
                
                NavigationLink(destination: TextPage()){
                    VStack{
                        Text("Here is Tab 2")
                        Text("Tap me to NavigatedView")
                    }
                }
                .tabItem {
                    Image.init(systemName: "b.circle")
                    Text("布局").font(.subheadline)
                }
                .tag(Tabs.tab2)
            }
            .navigationBarTitle(returnNaviBarTitle(tabSelection: self.tabSelection))
            .navigationBarHidden(returnNaviBarHidden(tabSelection: self.tabSelection))
            .navigationBarItems(leading: leftNavButton, trailing: rightNavButton)
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
