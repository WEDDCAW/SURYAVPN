//
//  SupportView.swift
//  SFI
//
//  Created by Mac on 2024/10/21.
//

import Foundation
import SwiftUI
import Crisp

struct SupportView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView(content: {
            VStack{
                ZStack{
                    
                    HStack{
                        Button(action: {
                            
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            
                            Image(systemName: "chevron.left")
                               .foregroundColor(.white)
                                 
                            Text("返回")
                                .foregroundColor(.white)
                        }).padding(10)
                        
                        Spacer(minLength: 0)
                        
                    }
                    
                    Text("客服（技术支持）")
                        .fontWeight(.bold).lineLimit(1)
                }
                .padding()
                //                .padding(.top,edges.top)
                .foregroundColor(.white)
                ChatViewControllerWrapper()
//                SomeUIElement()
//                WebView(url: URL(string: UserManager.shared.kefuUrl())!)
                
            }.navigationBarHidden(true).edgesIgnoringSafeArea(.bottom)
                .background(
                LinearGradient(colors: [
                
                    Color("BG1"),
                    Color("BG1"),
                    Color("BG2"),
                    Color("BG2"),
                    
                ], startPoint: .top, endPoint: .bottom)
            )
        })
         
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
    
}
