//
//  Tab1View.swift
//  SwiftUIAll
//
//  Created by 9haomi on 2021/1/3.
//

import SwiftUI

struct Tab1View: View {
    
    @State var showAlert = false
    @State var showPop = false
    
    var body: some View {
        
        if #available(iOS 14.0, *) {
            ScrollView {
                WatchRingsView()
                    .padding(.trailing,10)
                    .padding(.leading,10)
                LazyVGrid(
                    columns: [GridItem(.adaptive(minimum: 160), spacing: 16)],
                    spacing: 16) {
                    ForEach(tutorials) { tutorial in
//                        #if os(iOS)
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
                        }else{
                            if (tutorial.title == "Toggle1") {
                                NavigationLink(destination: TogglePage()) {
                                    TutorialItem(tutorial: tutorial)
                                        .frame(maxHeight: 240)
                                }
                            }else if (tutorial.title == "Slider1") {
                                NavigationLink(destination: SliderPage()) {
                                    TutorialItem(tutorial: tutorial)
                                        .frame(maxHeight: 240)
                                }
                            }else if (tutorial.title == "Stepper1") {
                                NavigationLink(destination: StepperPage()) {
                                    TutorialItem(tutorial: tutorial)
                                        .frame(maxHeight: 240)
                                }
                            }else {
                                NavigationLink(destination: TextPage()) {
                                    TutorialItem(tutorial: tutorial)
                                        .frame(maxHeight: 240)
                                }
                            }
                            
                        }
//                        #else
//                        TutorialItem(tutorial: tutorial)
//                            .frame(maxHeight: 240)
//                        #endif
                    }
                }
                .padding(.trailing,16)
                .padding(.leading,16)
            }
            
        } else {
            // Fallback on earlier versions
            BaseListView()
        }
        
    }
    
    
}

struct Tab1View_Previews: PreviewProvider {
    static var previews: some View {
        Tab1View()
    }
}
