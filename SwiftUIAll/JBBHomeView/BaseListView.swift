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
            
            Section(header: Text("文本").foregroundColor(Color.blue)) {
                TaskRow(title:"Text" ,desdetail:"显示一行或者多行文本控件")
                TaskRow(title:"TextField" ,desdetail:"显示编辑文本的输入控件")
                TaskRow(title:"SecureField" ,desdetail:"安全输入私密文本的输入控件")
            }

            Section(header: Text("图片").foregroundColor(Color.blue)) {
                TaskRow(title:"Image" ,desdetail:"加载展示本地图片")
                TaskRow(title:"WebImage" ,desdetail:"下载网络图片并展示")
            }
            
            Section(header: Text("按钮").foregroundColor(Color.blue)) {
                TaskRow(title:"Button" ,desdetail:"触发时执行操作的按钮")
                TaskRow(title:"NavigationButton" ,desdetail:"按下触发导航跳转的按钮")
                TaskRow(title:"PresentationButton" ,desdetail:"触发显示内容的按钮")
                TaskRow(title:"EditButton" ,desdetail:"用于切换当前编辑模式的按钮")
            }
            
            Section(header: Text("选择器").foregroundColor(Color.blue)) {
                TaskRow(title:"Picker" ,desdetail:"可以自定义数据源的Picker")
                TaskRow(title:"DatePicker" ,desdetail:"日期展示与选择的Picker")
                TaskRow(title:"Toggle" ,desdetail:"开关状态切换")
                TaskRow(title:"Slider" ,desdetail:"滑动设置指定范围的值")
                TaskRow(title:"Stepper" ,desdetail:"可以增加或减少数值")
            }
//
//            Section(header: Text("Other tasks")) {
//                TaskRow(title:"巨形")
//                TaskRow(title:"巨形")
//                TaskRow(title:"巨形")
//            }
//
//            Section(header: Text("Other tasks")) {
//                TaskRow(title:"巨形")
//                TaskRow(title:"巨形")
//                TaskRow(title:"巨形")
//            }
//
//            Section(header: Text("Other tasks")) {
//                TaskRow(title:"巨形")
//                TaskRow(title:"巨形")
//                TaskRow(title:"巨形")
//            }
//
//            Section(header: Text("Other tasks")) {
//                TaskRow(title:"巨形")
//                TaskRow(title:"巨形")
//                TaskRow(title:"巨形")
//            }
//
//            Section(header: Text("常用形状")) {
//                TaskRow(title:"矩形")
//                TaskRow(title:"圆角矩形")
//                TaskRow(title:"圆形")
//                TaskRow(title:"椭圆形")
//                TaskRow(title:"胶囊")
//            }
        }
    }
}

struct TaskRow: View {
    
    var title: String
    var desdetail: String
    
    var body: some View {
        NavigationLink(destination: TaskRowDetail(title: title)) {
            VStack (alignment:.leading,spacing: 10){//控制内部控件间隔和靠左居齐
                Text(title)
                    .bold()
                    //.font(.system(size: 18))
                Text(desdetail)
                    .font(.system(size: 14))
            }
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
