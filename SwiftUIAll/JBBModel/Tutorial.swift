//
//  Tutorial.swift
//  iOS
//
//  Created by Meng To on 7/3/20.
//

import SwiftUI

struct Tutorial: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var color: Color
    var image: String
    var progress: CGFloat
}

var tutorials = [
    Tutorial(
        title: "Text",
        subtitle: "显示一行或者多行文本控件\nDisplays one or more lines of text controls",
        color: Color(#colorLiteral(red: 0.2235294118, green: 0.07450980392, blue: 0.7215686275, alpha: 1)),
        image: "Logo SwiftUI",
        progress: 85.0
    ),
    Tutorial(
        title: "TextField",
        subtitle: "显示编辑文本的输入框控件\nDisplays an input control for editing text",
        color: Color(#colorLiteral(red: 1, green: 0.3529411765, blue: 0.4274509804, alpha: 1)),
        image: "Logo Figma",
        progress: 10.0
    ),
    Tutorial(
        title: "SecureField",
        subtitle: "安全输入私密文本的输入控件\nAn input control that securely enters private text",
        color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),
        image: "Logo UI Design",
        progress: 30.0
    ),
    Tutorial(
        title: "Image",
        subtitle: "加载展示本地图片\nLoads the display local image",
        color: Color(#colorLiteral(red: 1, green: 0.5838500857, blue: 0, alpha: 1)),
        image: "Logo Sketch",
        progress: 50.0
    ),
    Tutorial(
        title: "WebImage",
        subtitle: "下载网络图片并展示\nDownload and display web images",
        color: Color(#colorLiteral(red: 0, green: 0.8117647059, blue: 0.9921568627, alpha: 1)),
        image: "Logo React",
        progress: 50.0
    ),
    Tutorial(
        title: "Button",
        subtitle: "触发时执行操作的按钮\nA button that performs an action when triggered",
        color: Color(#colorLiteral(red: 0, green: 0.6002155542, blue: 0.9979781508, alpha: 1)),
        image: "Logo Framer",
        progress: 20.0
    ),
    Tutorial(
        title: "NavigationButton",
        subtitle: "按下触发导航跳转的按钮\nPress the button that triggers the navigation jump",
        color: Color(#colorLiteral(red: 0.261730969, green: 0.3264437318, blue: 1, alpha: 1)),
        image: "Logo Webflow",
        progress: 20.0
    ),
    Tutorial(
        title: "EditButton",
        subtitle: "用于切换当前编辑模式的按钮\nButton to toggle the current edit mode",
        color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)),
        image: "Logo Webflow",
        progress: 20.0
    ),
    Tutorial(
        title: "Picker",
        subtitle: "可以自定义数据源的选择器\nYou can customize the selector for the data source",
        color: Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)),
        image: "Logo ProtoPie",
        progress: 20.0
    ),
    Tutorial(
        title: "DatePicker",
        subtitle: "日期展示的选择器,可以选择日期时间\nDate display selector, which allows you to select the date and time",
        color: Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1)),
        image: "Logo React",
        progress: 20.0
    ),
    Tutorial(
        title: "Toggle1",
        subtitle: "开关状态切换，可自定义颜色等\nSwitch state switch, can customize the color, etc",
        color: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)),
        image: "Logo ProtoPie",
        progress: 20.0
    ),
    Tutorial(
        title: "Slider1",
        subtitle: "滑动设置指定范围的值\nSlides the value of the specified range",
        color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)),
        image: "Logo Principle",
        progress: 20.0
    ),
    Tutorial(
        title: "Stepper1",
        subtitle: "可以增加或减少数值\nYou can increase or decrease the value",
        color: Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)),
        image: "Logo AE",
        progress: 20.0
    ),
    Tutorial(
        title: "Alert",
        subtitle: "展示一个弹框视图，居中显示\nDisplays a pop-up view, centered",
        color: Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)),
        image: "Logo ProtoPie",
        progress: 20.0
    ),
    Tutorial(
        title: "ActionSheet",
        subtitle: "从底部弹出一个选择视图\nPop a selection attempt from the bottom",
        color: Color(#colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)),
        image: "Logo Framer",
        progress: 20.0
    ),
    Tutorial(
        title: "Modal",
        subtitle: "弹出一个模态视图\nA modal view pops up",
        color: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)),
        image: "Logo SwiftUI",
        progress: 20.0
    ),
    Tutorial(
        title: "Popover",
        subtitle: "pop出一个视图\nPop up a view",
        color: Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)),
        image: "Logo Framer",
        progress: 20.0
    )
]
