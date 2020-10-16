//
//  CountDownViewController.swift
//  Effort
//
//  Created by 高橋　龍 on 2020/10/16.
//  Copyright © 2020 com.litech. All rights reserved.
//

import UIKit

class CountDownViewController: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    
    var timer = Timer()
    var seconds = 0
    var minutes = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    func downStart() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.countLabel.text = "\(self.minutes):\(self.seconds)"
            self.seconds += 1
            if self.seconds >= 60 {
                self.minutes += 1
                self.seconds = 0
            }
        }
    }
        
    func downStop() {
        timer.invalidate()
    }
        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
