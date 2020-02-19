//
//  ContentView.swift
//  Profilepage
//
//  Created by 赤堀雅司 on 19/2/20.
//  Copyright © 2020 赤堀雅司. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Profile()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}


struct Profile: View {
    var body: some View{
        ZStack{
            Image("bg").resizable().edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Button(action: {
                        
                    }){
                        Image("menu").resizable().renderingMode(.original).resizable().frame(width: 20, height: 20)
                    }
                    Spacer()
                    
                    Button(action: {
                        
                    }){
                        Image("close").resizable().renderingMode(.original).resizable().frame(width: 20, height: 20)
                    }
                    
                    
                    
                    
                    
                }
                Spacer()
                
                ZStack(alignment: .top){
                    VStack{
                        HStack{
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Bella,").font(.title)
                                Text("25")
                            }
                            Spacer()
                            
                            HStack(spacing: 8){
                                Image("map").resizable().frame(width: 15, height: 20)
                                Text("8Miles")
                                
                            }.padding(8)
                                .background(Color.black.opacity(0.1))
                                .cornerRadius(10)
                            
                            
                        }.padding(.top,30)
                        
                        Text("real slim shady").padding(.top)
                    }.padding()
                        .background(BlurView())
                        //backgroundcolor が半透明になる
                        .clipShape(BottomShape())
                        .cornerRadius(25)

                    ZStack{
                        Button(action: {
                            
                        }) {
                            Image("play").renderingMode(.original).resizable().frame(width: 20, height: 20)
                                .padding(20)
                                .background(Color.white)
                                .clipShape(Circle())
                        }
                        
                        Circle().stroke(Color.yellow, lineWidth: 5).frame(width: 70, height: 70)
                    }.offset(y: -35)
                    
                    
                }
            }
        }
        
    }
}
    
    
    struct BottomShape : Shape {
        func path(in rect: CGRect) -> Path {
            return Path{path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 0, y: rect.height))
                path.addLine(to: CGPoint(x: rect.width, y: rect.height))
                path.addLine(to: CGPoint(x: rect.width, y: 0))
                path.addArc(center: CGPoint(x: rect.width / 2, y: 0), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: false)
                
                
            }
            
        }
    }
    
    
    struct BlurView: UIViewRepresentable{
        //背景を半透明にするstruct
        
        func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIVisualEffectView{
            let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialLight))
            
            return view
        }
        
        func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<BlurView>)
        {
            
        }
}



