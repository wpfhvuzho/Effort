//
//  CountDownView.swift
//  Effort
//
//  Created by 高橋　龍 on 2020/10/15.
//  Copyright © 2020 com.litech. All rights reserved.
//

import SwiftUI

struct CountDownView: View {
    
    @ObservedObject var countDown = CountDown()

    
    var body: some View {
        VStack {
            
           
            
            Text("\(self.countDown.count)")
            
            Button (action: {
                self.countDown.start()
            }) {
                Text("休憩")
            }
            
            Button (action: {
                self.countDown.stop()
            }) {
                Text("とめる")
            }
            
            Button (action: {
                self.countDown.start()
            }) {
                Text("再開")
            }
            
        }
       .navigationBarTitle(Text("hello"), displayMode: .inline)
    }
    
}





struct CountDownView_Previews: PreviewProvider {
    static var previews: some View {
        CountDownView()
    }
}
