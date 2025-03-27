//
//  ContentView.swift
//  SwiftUI_week1
//
//  Created by Youbin on 3/25/25.
//

import SwiftUI

struct TicketView: View {
    var body: some View {
        ZStack(alignment: .center, content: {
            
            Image(.rabbit)
            Rectangle().frame(width: 385, height: 386)
                .foregroundStyle(.black.opacity(0.3))
            allInfo
        })
        .padding()
    }
    
    private var allInfo: some View {
        VStack(alignment: .center, content: {
            
            Spacer().frame(height: 111)
            title
            Spacer().frame(height: 134)
            booking
        })
    }
    
    private var title: some View {
        VStack(alignment: .center, spacing: 0, content: {
            Text("마이펫의 이중생활2")
                .font(.PretendardBold30)
                .foregroundStyle(.white)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y:4)
            
            Text("본인 + 동반 1인")
                .font(.PretendardLight16)
                .foregroundStyle(.white)
            
            Text("30,100원")
                .font(.PretendardBold24)
                .foregroundStyle(.white)
        })
        .frame(height: 84)
    }
    
    private var booking: some View {
        
        Button(action: {
            print("예매하기 버튼 눌림")
        }, label: {
            VStack(alignment: .center, spacing: 7, content: {
                Image(systemName: "chevron.up")
                    .foregroundStyle(.white)
                
                Text("예매하기")
                    .font(.PretendardSemiBold18)
                    .foregroundStyle(.white)
            })
            .frame(width: 63, height: 40)
        })
    }
}

#Preview {
    TicketView()
}
