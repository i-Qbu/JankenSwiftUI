//
//  ContentView.swift
//  Janken
//
//  Created by 渡辺大智 on 2023/12/31.
//

import SwiftUI

struct ContentView: View {
    
    @State var jankenNumber = 0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            if jankenNumber == 0 {
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            } else if jankenNumber == 1 {
                // グー画像を指定
                Image(.gu)
                // リサイズを指定
                    .resizable()
                // 画面に収まるように，アスペクト比（縦横比）を維持する指定
                    .scaledToFit()
                
                Spacer()
                
                Text("グー")
                    .padding(.bottom)
            } else if jankenNumber == 2 {
                // チョキ画像を指定
                Image(.choki)
                // リサイズを指定
                    .resizable()
                // 画面に収まるように，アスペクト比（縦横比）を維持する指定
                    .scaledToFit()
                
                Spacer()
                
                Text("チョキ")
                    .padding(.bottom)
            } else {
                // グー画像を指定
                Image(.pa)
                // リサイズを指定
                    .resizable()
                // 画面に収まるように，アスペクト比（縦横比）を維持する指定
                    .scaledToFit()
                
                Spacer()
                
                Text("パー")
                    .padding(.bottom)
            }
            Button(action: {
                var newJankenNumber = 0
                repeat {
                    newJankenNumber = Int.random(in: 1...3)
                } while jankenNumber == newJankenNumber
                // @Stateで指定した状態変数がここで書き換わる．これによりbodyの再描画が行われる
                jankenNumber = newJankenNumber
            }, label: {
                Text("じゃんけん")
                    // 画面いっぱい=infinity
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundColor(.white)
            })
        }
    }
}

#Preview {
    ContentView()
}
