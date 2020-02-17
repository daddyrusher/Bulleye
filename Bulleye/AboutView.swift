//
//  AboutView.swift
//  Bulleye
//
//  Created by Максим Занин on 18.02.2020.
//  Copyright © 2020 Максим Занин. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    let lightOrange = Color(red: 255.0 / 255.0, green: 214.0 / 255.0, blue: 179.0 / 255.0)
    
    struct HeadingViewStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .padding(.top, 20)
                .padding(.bottom, 20)
        }
    }
    
    struct TextViewStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .padding(.leading, 60)
                .padding(.bottom, 20)
                .padding(.trailing, 60)
        }
    }
    
    var body: some View {
        Group {
            VStack {
                Text("🎯 Bullseye 🎯").modifier(HeadingViewStyle())
                Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.").modifier(TextViewStyle())
                Text("Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score.").modifier(TextViewStyle())
                Text("Enjoy!").modifier(TextViewStyle())
            }
            .background(lightOrange, alignment: .center)
            .navigationBarTitle("About Bullseye")
        }
        .background(Image("Background"))
    }
    
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}

