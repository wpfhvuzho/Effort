//
//  SomeView.swift
//  Effort
//
//  Created by 高橋　龍 on 2020/10/16.
//  Copyright © 2020 com.litech. All rights reserved.
//

import SwiftUI

struct SomeView: View {
    var body: some View {
        VStack {
            Text("プレゼンテーション")
            Image(systemName: "gift")
                .imageScale(.large)
                .padding()
        }
    }
}

struct SomeView_Previews: PreviewProvider {
    static var previews: some View {
        SomeView()
    }
}
