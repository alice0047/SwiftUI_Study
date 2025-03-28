//
//  SplashView.swift
//  week1_assignment
//
//  Created by Youbin on 3/27/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack(alignment: .center, content: {
            Color(Color.green01)
            
            Image("starbucks_logo")
                .resizable()
                .frame(width:168, height: 168)
        })
        .ignoresSafeArea()
    }
}

struct SplashView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            SplashView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
