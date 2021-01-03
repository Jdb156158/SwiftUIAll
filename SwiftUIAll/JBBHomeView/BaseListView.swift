//
//  BaseListView.swift
//  SwiftUIAll
//
//  Created by db J on 2020/12/31.
//

import SwiftUI

struct BaseListView: View {
    
    @State var showAlert = false
    @State var showPop = false
    @State var showModelView = false
    @State var showSheet = false
    
    private var sheet: ActionSheet {

        let action = ActionSheet(title: Text("Title"),
                                 message: Text("Message"),
                                 buttons:
            [.default(Text("Default"), action: {
                print("Default")
                self.showSheet = false
            }),.destructive(Text("destructive"), action: {
                print("destructive")
                self.showSheet = false
            }),.cancel({
                print("Cancel")
                self.showSheet = false
            })])
        
        return action
    }
    
    var body: some View {
        List {
            Section () {
                ScrollView(.horizontal, showsIndicators: false) {
                    WatchRingsView()
                        .padding(.horizontal, 0)
                        .padding(.vertical, 0)
                }
            }
            
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
                TaskRow(title:"EditButton" ,desdetail:"用于切换当前编辑模式的按钮")
            }
            
            Section(header: Text("选择器").foregroundColor(Color.blue)) {
                TaskRow(title:"Picker" ,desdetail:"可以自定义数据源的Picker")
                TaskRow(title:"DatePicker" ,desdetail:"日期展示与选择的Picker")
                TaskRow(title:"Toggle" ,desdetail:"开关状态切换")
                TaskRow(title:"Slider" ,desdetail:"滑动设置指定范围的值")
                TaskRow(title:"Stepper" ,desdetail:"可以增加或减少数值")
            }
            
            Section(header: Text("弹框视图").foregroundColor(Color.blue)) {
                TaskRowNolink(title:"Alert" ,desdetail:"展示一个弹框提醒")
                    .onTapGesture {
                        //可加点击事件
                        self.showAlert = true
                    }
                    .alert(isPresented: $showAlert, content: {
                        Alert(title: Text("标题提示语"),
                              message: Text("这里写提示内容的详情"),
                              primaryButton: .destructive(Text("确认")) { print("已确认") },
                              secondaryButton: .cancel())
                    })
                TaskRowNolink(title:"ActionSheet" ,desdetail:"从底部弹出一个选择视图")
                    .onTapGesture {
                        //可加点击事件
                        self.showSheet = true
                    }
                    .actionSheet(isPresented: $showSheet, content: {sheet})
                TaskRowNolink(title:"Model" ,desdetail:"弹出一个模态视图")
                    .onTapGesture {
                        //可加点击事件
                        self.showModelView = true
                    }
                    .sheet(isPresented: $showModelView, onDismiss: {
                        print("dissmiss Model")
                    }) {
                        ZStack {
                            Text("This is Model view.")
                        }
                    }
                TaskRowNolink(title:"Popover" ,desdetail:"Pop出一个视图")
                    .onTapGesture {
                        //可加点击事件
                        self.showPop = true
                    }
                    .sheet(isPresented: $showPop, onDismiss: {
                        print("dissmiss Model")
                    }) {
                        ZStack {
                            Text("This is Popover view.")
                        }
                    }
            }

        }
        
    }
}

struct TaskRowNolink: View {
    
    var title: String
    var desdetail: String
    
    var body: some View {
        VStack (alignment:.leading,spacing: 10){//控制内部控件间隔和靠左居齐
            Text(title)
                .bold()
                //.font(.system(size: 18))
            Text(desdetail)
                .font(.system(size: 14))
        }.frame(width: KScreenWidth,alignment:.leading).background(Color.white)
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
        NavigationView {
            switch title {
            case "Text":
                TextPage()
            case "TextField":
                TextFieldPage()
            case "SecureField":
                TextFieldPage()
            case "Image":
                ImagePage()
            case "WebImage":
                WebImagePage()
            case "Button":
                ButtonPage()
            case "NavigationButton":
                NavigationButtonPage()
            case "EditButton":
                EditButtonPage()
            case "Picker":
                PickerPage()
            case "DatePicker":
                DatePickerPage()
            case "Toggle":
                TogglePage()
            case "Slider":
                SliderPage()
            case "Stepper":
                StepperPage()
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
}

struct WatchRingsView: View {
    
    var dayYear = 0
    var dayPercentageYear = 0.0
    var rightRunText:String = "平年"
    
    func dayOfYear(_ date: String) -> Int {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let endDate = dateFormatter.date(from: date)!
        let year = date.components(separatedBy: "-").first!
        let startStr = year + "-01-01"
        let startDate = dateFormatter.date(from: startStr)!
        
        let days = Calendar.current.dateComponents([.day], from: startDate, to: endDate).day!
        return days + 1
    }
    
    func isRun(_ date: String) -> Bool {
        let dateArray = date.split(separator: "-")
        let y = Int(dateArray[0])!
        let isRun = ((y % 4 == 0) && (y % 100 != 0)) || (y % 400 == 0)
        if isRun {
            return true
        }else{
            return false
        }
    }
    
    init(){
        let  formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        let dates = formatter.string(from: Date())
        
        dayYear = self.dayOfYear(dates)
        
        let isR = self.isRun(dates)
        
        if isR {
            rightRunText = "闰年"
            dayPercentageYear = 100-Double(dayYear)/366.0
        }else{
            rightRunText = "平年"
            dayPercentageYear = 100-Double(dayYear)/365.0
        }
    }
    
    var body: some View {
 
        HStack(spacing: KScreenWidth-50-280) {
            HStack(spacing: 20.0) {
                RingView(color1: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), color2: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), width: 50, height: 50, percent: CGFloat(dayPercentageYear), show: .constant(true))
                VStack(alignment: .leading, spacing: 4) {
                    Text("Time countdown").bold().modifier(FontModifier(style: .footnote))
                    Text("Today is the \(dayYear)th day of the year").modifier(FontModifier(style: .caption))
                }
//                .modifier(FontModifier())
            }
            .padding(8)
//            .background(Color("background3"))
//            .cornerRadius(20)
//            .modifier(ShadowModifier())
            
            Text(self.rightRunText)
                .foregroundColor(.blue)
                .bold()
                .font(.system(.headline))

        }
    }
    
}
struct BaseListView_Previews: PreviewProvider {
    static var previews: some View {
        BaseListView()
    }
}
