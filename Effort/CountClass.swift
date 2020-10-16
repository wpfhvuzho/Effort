//
//  Count.swift
//  Effort
//
//  Created by 高橋　龍 on 2020/10/16.
//  Copyright © 2020 com.litech. All rights reserved.
//

import Foundation

class CountUp: ObservableObject {
    
    @Published var counter: Int = 0
    
    var timer = Timer()
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.counter += 1
        }
    }
        
        func stop() {
            timer.invalidate()
        }
}

class CountDown: ObservableObject {
    
    @Published var count: Int = 100
    
    var timer = Timer()
    
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.count -= 1
        }
    }
        
    func stop() {
        timer.invalidate()
    }
}
