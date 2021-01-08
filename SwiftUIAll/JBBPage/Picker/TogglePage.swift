//
//  TogglePage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI
import Combine
struct TogglePage : View {
    
    @State var isOn = true
    
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("\(self.isOn == true ? "开":"关")")
                .foregroundColor(.white)
        }
        .frame(width: KScreenWidth/2-16*4, height: 30, alignment: .center)
    }
}

#if DEBUG
struct TogglePage_Previews : PreviewProvider {
    static var previews: some View {
        TogglePage()
    }
}
#endif
