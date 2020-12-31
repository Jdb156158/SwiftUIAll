//
//  BaseListView.swift
//  SwiftUIAll
//
//  Created by db J on 2020/12/31.
//

import SwiftUI

struct BaseListView: View {
    var body: some View {
        List {
            Section(header: Text("常用形状")) {
                TaskRow(title:"矩形")
                TaskRow(title:"圆角矩形")
                TaskRow(title:"圆形")
                TaskRow(title:"椭圆形")
                TaskRow(title:"胶囊")
            }
            
            Section(header: Text("Other tasks")) {
                TaskRow(title:"巨形")
                TaskRow(title:"巨形")
                TaskRow(title:"巨形")
            }
        }
    }
}

struct TaskRow: View {
    
    var title: String
    
    var body: some View {
        NavigationLink(destination: TaskRowDetail(title: title)) {
            Text(title)
        }
        
    }
}

struct TaskRowDetail: View {
    
    var title: String
    
    var body: some View {
        switch title {
        case "矩形":
            Text("矩形")
            Rectangle() //矩形
                .frame(width: 200, height: 50)
        case "圆角矩形":
            Text("圆角矩形")
            RoundedRectangle(cornerRadius: 10, style: .continuous) //圆角矩形
                .frame(width: 200, height: 50)
        case "圆形":
            Text("圆形")
            Circle() //圆形
                .frame(width: 50, height: 50)
        case "椭圆形":
            Text("椭圆形")
            Ellipse() //椭圆形
                .frame(width: 200, height: 50)
        case "胶囊":
            Text("胶囊")
            Capsule() //胶囊
                .frame(width: 200, height: 50)
        default:
            Text("default")
        }
        
    }
}

struct BaseListView_Previews: PreviewProvider {
    static var previews: some View {
        BaseListView()
    }
}
