//
//  ContentView.swift
//  Effort
//
//  Created by 高橋　龍 on 2020/10/15.
//  Copyright © 2020 com.litech. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var didTime:Int = 0
    @State var memoTimeMinutes:Int = 0
    @State var memoTimeHours:Int = 0
    
    @State var upModal:Bool = false
    @State var downModal:Bool = false

    
    @State var timeString:String = "00:00"
    @State var addTimeArray = ["1", "5", "30"]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Group{
                    //カウントアップセル
                    Button(action: {
                        self.upModal = true
                    }) {
                        Text("カウントアップ")
                        .font(.largeTitle)
                        .padding()
                    }
                    .sheet(isPresented: $upModal) {
                        CountUpView()
                    }
                }
                Divider()
                
                Group{
                    //カウントダウンセル
                    Button(action: {
                        self.downModal = true
                    }) {
                        Text("カウントダウン")
                        .font(.largeTitle)
                        .padding()
                    }
                    .sheet(isPresented: $downModal) {
                        CountDownView()
                    }
                }
                Divider()
                
                //記録セル
                VStack (alignment: .center){
                    
//                    区切りの中のタイトル
                    Text("記録")
                        .font(.largeTitle)
                        .padding()
                    

                    
                    //下のボタンで追加されるはずの時間
                    Text(timeString)
                        .font(.title)
                    
                    //時間を追加するボタン
                    HStack (alignment: .center){
                        
//                        左のボタン
                        Button(action: {
                            self.timeString =  self.showTimes(didTime: Int(self.addTimeArray[0])!)
                        }) {
                            Text(self.addTimeArray[0])
                                .font(.largeTitle)
                                .frame(width: 80, height: 80, alignment: .center)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                            .cornerRadius(10)
                        }
                        .padding()
                        
//                        真ん中のボタン
                        Button(action: {
                            self.timeString =  self.showTimes(didTime: Int(self.addTimeArray[1])!)
                        }) {
                            Text(self.addTimeArray[1])
                                .font(.largeTitle)
                                .frame(width: 80, height: 80, alignment: .center)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                            .cornerRadius(10)
                        }
                        .padding()
                        
//                        一番右のボタン
                        Button(action: {
                            self.timeString =  self.showTimes(didTime: Int(self.addTimeArray[2])!)
                        }) {
                            Text(self.addTimeArray[2])
                                .font(.largeTitle)
                                .frame(width: 80, height: 80, alignment: .center)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                            .cornerRadius(10)
                        }
                        .padding()
                    }
                    
//                    記録するボタンの列
                    HStack (alignment: .center){
                        
//                        ーボタン
                        Button(action: {
                            //change-
                        }) {
                           Text("-")
                               .font(.largeTitle)
                               .frame(width: 60, height: 60, alignment: .center)
                               .foregroundColor(Color.white)
                               .background(Color.blue)
                           .cornerRadius(10)
                        }
//                        .padding()
                        
//                        記録するボタン
                        Button(action: {
                                //addTime
                            }) {
                                Text("記録する")
                                    .font(.largeTitle)
                                        .frame(width: 180, height: 60, alignment: .center)
                                        .foregroundColor(Color.white)
                                        .background(Color.blue)
                                    .cornerRadius(10)
                            }
//                        .padding()
                        
                        //+ボタン
                        Button(action: {
                            //change+
                        }) {
                           Text("+")
                               .font(.largeTitle)
                               .frame(width: 60, height: 60, alignment: .center)
                               .foregroundColor(Color.white)
                               .background(Color.blue)
                           .cornerRadius(10)
                        }
//                        .padding()
                    }
                .padding()
                }
                Divider()
                
                //画面上部に寄せるため
                Spacer()
            }
                
            //navigationBarのデザイン
            .navigationBarTitle("努力する", displayMode: .inline)
            .font(.largeTitle)
        }
        
        
        
    }
    
    //ボタンを反映する関数
    func showTimes(didTime: Int) -> String{
        
//        print(self.memoTimeMinutes)
//        print(didTime)
//        print("---")
        
        //記録する時間の計算
        self.memoTimeMinutes += didTime
        if self.memoTimeMinutes >= 60 {
            self.memoTimeHours += 1
            self.memoTimeMinutes -= 60
        }
        
        //書式を合わせる
        if memoTimeHours < 10 && memoTimeMinutes < 10 {
            return "0\(memoTimeHours):0\(memoTimeMinutes)"
        }else if memoTimeHours < 10{
            return "0\(memoTimeHours):\(memoTimeMinutes)"
        }else if memoTimeMinutes < 10 {
            return "\(memoTimeHours):0\(memoTimeMinutes)"
        }else {
            return "\(memoTimeHours):\(memoTimeMinutes)"
        }

        
        
//        print(memoTimeMinutes)
//        print(memoTimeHours)
//        print("---")
        
        
    }
    
    
    
    
    
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
