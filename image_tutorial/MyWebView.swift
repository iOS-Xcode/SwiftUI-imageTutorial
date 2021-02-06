//
//  MyWebView.swift
//  image_tutorial
//
//  Created by Seokhyun Kim on 2020-10-10.
//

import SwiftUI
import WebKit
//uikit의 uiview를 사용할 있도록 한다.
//controller를 사용 할 경우 UIViewControllerRepresentable
struct MyWebView: UIViewRepresentable {
    
    var urlToLoad: String
    // uiView 만들기
    func makeUIView(context: Context) -> WKWebView {
        //unwrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        //웹뷰 인스턴스 생성
        let webview = WKWebView()
        //웹뷰 로드
        webview.load(URLRequest(url: url))
        return webview
    }
    
    //update ui view, 다시 그림
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
