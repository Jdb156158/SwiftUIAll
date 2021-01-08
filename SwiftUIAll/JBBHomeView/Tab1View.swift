//
//  Tab1View.swift
//  SwiftUIAll
//
//  Created by 9haomi on 2021/1/3.
//

import SwiftUI

struct Tab1View: View {
    
    @State var showAlert = false
    @State var showSheet = false
    @State var showPopover = false
    
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
        ScrollView {
            WatchRingsView()
                .padding(.trailing,10)
                .padding(.leading,10)
            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: 160), spacing: 16)],
                spacing: 16) {
                ForEach(tutorials) { tutorial in
                    if tutorial.title == "Text" {
                        NavigationLink(destination: TextPage()) {
                            TutorialItem(tutorial: tutorial)
                                .frame(maxHeight: 240)
                        }
                    }else if (tutorial.title == "TextField") {
                        NavigationLink(destination: TextFieldPage()) {
                            TutorialItem(tutorial: tutorial)
                                .frame(maxHeight: 240)
                        }
                    }else if (tutorial.title == "SecureField") {
                        NavigationLink(destination: TextFieldPage()) {
                            TutorialItem(tutorial: tutorial)
                                .frame(maxHeight: 240)
                        }
                    }else if (tutorial.title == "Image") {
                        NavigationLink(destination: ImagePage()) {
                            TutorialItem(tutorial: tutorial)
                                .frame(maxHeight: 240)
                        }
                    }else if (tutorial.title == "WebImage") {
                        NavigationLink(destination: WebImagePage()) {
                            TutorialItem(tutorial: tutorial)
                                .frame(maxHeight: 240)
                        }
                    }else if (tutorial.title == "Button") {
                        NavigationLink(destination: ButtonPage()) {
                            TutorialItem(tutorial: tutorial)
                                .frame(maxHeight: 240)
                        }
                    }else if (tutorial.title == "NavigationButton") {
                        NavigationLink(destination: NavigationButtonPage()) {
                            TutorialItem(tutorial: tutorial)
                                .frame(maxHeight: 240)
                        }
                    }else if (tutorial.title == "EditButton") {
                        NavigationLink(destination: EditButtonPage()) {
                            TutorialItem(tutorial: tutorial)
                                .frame(maxHeight: 240)
                        }
                    }else if (tutorial.title == "Picker") {
                        NavigationLink(destination: PickerPage()) {
                            TutorialItem(tutorial: tutorial)
                                .frame(maxHeight: 240)
                        }
                    }else if (tutorial.title == "DatePicker") {
                        NavigationLink(destination: DatePickerPage()) {
                            TutorialItem(tutorial: tutorial)
                                .frame(maxHeight: 240)
                        }
                    }else if (tutorial.title == "Alert") {
                        TutorialItem(tutorial: tutorial)
                            .frame(maxHeight: 240)
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
                    }else if (tutorial.title == "ActionSheet") {
                        TutorialItem(tutorial: tutorial)
                            .frame(maxHeight: 240)
                            .onTapGesture {
                                //可加点击事件
                                self.showSheet = true
                            }
                            .actionSheet(isPresented: $showSheet, content: {sheet})
                    }else if (tutorial.title == "Modal") {
                        TutorialItem(tutorial: tutorial)
                            .frame(maxHeight: 240)
                    }else if (tutorial.title == "Popover") {
                        TutorialItem(tutorial: tutorial)
                            .frame(maxHeight: 240)
                    }else {
                        TutorialItem(tutorial: tutorial)
                            .frame(maxHeight: 240)
                    }
                }
            }
            .padding(.trailing,16)
            .padding(.leading,16)
        }
    }
    
    
}

struct Tab1View_Previews: PreviewProvider {
    static var previews: some View {
        Tab1View()
    }
}
