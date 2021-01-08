//
//  StepperPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI
import Combine

struct StepperPage : View {
    
    @State var value = 0
    
    var body: some View {
        Stepper(value: $value, step: 2, onEditingChanged: { c in
            print(c)
        }) {
            Text("\(self.value)")
                .foregroundColor(.white)
        }
    }
}

#if DEBUG
struct StepperPage_Previews : PreviewProvider {
    static var previews: some View {
        StepperPage()
    }
}
#endif
