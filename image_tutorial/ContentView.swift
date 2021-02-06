//
//  ContentView.swift
//  image_tutorial
//
//  Created by Seokhyun Kim on 2020-10-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("myImage")
                    .frame(height : 10)
                    //y축 최하단에서 떨어지는 크기
                    .offset(y: -830)
                CircleImageView()
                HStack {
                    NavigationLink(
                        destination: MyWebView(urlToLoad: "https://www.studyios.org")
                    ){
                        //네비게이션 링크 설정
                        Text("공부하기")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    
                    NavigationLink(
                        destination: MyWebView(urlToLoad: "https://www.naver.com")
                    ){
                        //네비게이션 링크 설정
                        Text("naver")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                } //HStack
                //HStack의 패딩. 상하좌우 50
                .padding(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
