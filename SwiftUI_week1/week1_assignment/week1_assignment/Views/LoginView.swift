//
//  LoginView.swift
//  week1_assignment
//
//  Created by Youbin on 3/28/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 44, content: {
            title
            
            loginInfo
            
            snsLogin
        })
    }
}

//MARK: - 로고 및 타이틀
private var title: some View {
    VStack(alignment: .leading, content: {
        Image("starbucks_logo")
            .resizable()
            .frame(width: 97, height: 95)
        
        Spacer().frame(height: 28)
        
        Text("안녕하세요. \n스타벅스입니다.")
            .font(.mainTextExtraBold24)
            .foregroundStyle(.black03)
        
        Spacer().frame(height: 19)
        
        Text("회원 서비스 이용을 위해 로그인 해주세요")
            .font(.mainTextMedium16)
            .foregroundStyle(.gray01)
    })
    .padding(.leading, 19)
    .frame(minWidth: 402, minHeight: 219, alignment: .leading)
}

//MARK: - 로그인 정보 입력 및 로그인하기 버튼
private var loginInfo: some View {
    VStack(alignment: .leading, content: {
        Text("아이디")
            .font(.mainTextRegular13)
            .foregroundStyle(Color.black01)
        Divider().frame(width: 352)
        
        Spacer().frame(height: 47)
        
        Text("비밀번호")
            .font(.mainTextRegular13)
            .foregroundStyle(Color.black01)
        Divider().frame(width: 352)
        
        Spacer().frame(height: 47)
        
        Button(action: {
            print("로그인하기 버튼 눌림")
        }, label: {
            Text("로그인하기")
                .frame(width: 352, height: 46)
                .font(.mainTextMedium16)
                .foregroundStyle(Color.white)
                .background(Color.green01)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        })
    })
    .frame(minWidth: 352, minHeight: 180)
}

private var snsLogin: some View {
    VStack(alignment: .center, spacing: 19, content: {
        Text("이메일로 회원가입하기")
            .font(.mainTextRegular12)
            .foregroundStyle(Color.gray04)
            .underline()
        
        Button(action: {
            print("카카오 로그인 버튼 눌림")
        }, label: {
            Image("kakaoLogin")
                .resizable()
                .frame(width: 306, height: 45)
        })
        
        Button(action: {
            print("애플 로그인 버튼 눌림")
        }, label: {
            Image("appleLogin")
                .resizable()
                .frame(width: 306, height: 45)
        })
    })
}

struct LoginView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            LoginView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
