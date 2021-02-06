//
//  CircleImageView.swift
//  image_tutorial
//
//  Created by Seokhyun Kim on 2020-10-10.
//

import SwiftUI

struct CircleImageView  : View {
    var body: some View {
        //use sf symbols
        //        Image(systemName: "flame.fill")
        //            .font(.system(size: 100))
        //            .foregroundColor(.gray)
        //            .shadow(color: .green, radius: 2, x: 5, y: 10)
        Image("myImage")
        .resizable()
        // .aspectRatio 와 같은 의미
        .scaledToFill()
        .frame(width: 300, height: 300)
            //이미지를 둥그럽게..
        .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.1)
            )
        //stroke(윤각선)을 overlay(덪시움)
           .overlay(
                Circle().stroke(Color.red, lineWidth: 10)
                    .padding()
            )
            .overlay(
                Circle().stroke(Color.yellow, lineWidth: 10)
                    .padding(30)
            )
            .overlay(
                Circle().stroke(Color.blue, lineWidth: 10)
            )
            .overlay(
                Text("Busan")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            )
            .overlay(
                Circle().stroke(Color.green, lineWidth: 10)
                    .padding()
            )
 
        //`예상크기
        //           .aspectRatio(contentMode: .fill)
        //실재 크기는 200
        //            .frame(width: 200, height: 200)
        //frame 크기만큼 잘라냄.
        //               .clipped()
        
        //            .edgesIgnoringSafeArea(.all)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
//        MyCircleImageView(imageString: "myImage")
        CircleImageView()
    }
}
