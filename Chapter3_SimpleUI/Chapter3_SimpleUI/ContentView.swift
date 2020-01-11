//File: ContentView.swift
//Project: Chapter3_SimpleUI

//Created at 06.01.20 by BLCKBIRDS
//Visit www.BLCKBIRDS.com for more.

import SwiftUI

struct ContentView: View {
    
    @State var showIcon = false
    
    var body: some View {
        VStack(spacing: 50) {
            if showIcon {
               Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 170, height: 170)
                    .clipped()
                    .padding(.top, 200)
            }
            Spacer()
            VStack(alignment: .leading, spacing: 10) {
                Text("I love SwiftUI!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Text("SwiftUI makes developing iOS apps super easy and fast.")
            }
                .frame(width: 300, height: 100)
            LogoButton(showIcon: $showIcon)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LogoButton: View {
    
    @Binding var showIcon: Bool
    
    var body: some View {
        Button(action: {self.showIcon.toggle()}) {
            Text("Show me the logo!")
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .foregroundColor(.white)
        }
            .padding(.bottom, 130)
    }
}
