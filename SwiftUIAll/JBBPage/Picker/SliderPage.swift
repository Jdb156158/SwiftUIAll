//
//  SliderPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import SwiftUI
import Combine

struct SliderPage : View {
    
    @State var rating = 0.5

    var body: some View {
        Slider(value: $rating)
            .frame(width: KScreenWidth/2-16*4, height: 30, alignment: .center)
    }
}



#if DEBUG
struct SliderPage_Previews : PreviewProvider {
    static var previews: some View {
        SliderPage()
    }
}
#endif
