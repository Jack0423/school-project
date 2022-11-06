//
//  ContentView.swift
//  school project
//
//  Created by Jack on 2022/3/15.
//


import SwiftUI



    
struct ContentView: View {
    @State private var isNavigationActive = false
    @State private var isActive = false
    let imgheight = UIScreen.main.bounds.height -  (UIApplication.shared.statusBarFrame.size.height + 140)
    let imgwidth = UIScreen.main.bounds.width * 0.7
    
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("選取主題")
                        .padding()
                        .font(.largeTitle.bold())
                    Spacer()
                    Menu {
                        Button {
                            isActive = true
                        } label: {
                            Label("關於APP", systemImage: "info.circle")
                        }
                        Link(destination: URL(string: "https://forms.gle/oKtJwC7W7ibwUrDA8")!, label: {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.black)
                            Spacer()
                            Text("意見回饋")
                        })
                    } label: {
                       Image(systemName: "list.bullet")
                           .padding()
                           .font(.largeTitle)
                           .foregroundColor(.blue)
                    }.background(
                        NavigationLink(destination: information(), isActive: $isActive) {
                            EmptyView()
                        })
                
                }.offset(y:20)
                    
                
                
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack(spacing:20){
                        NavigationLink{
                            birdmenu()
                        }label: {
                            ZStack{
                                Image("bird")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: imgwidth, height: imgheight )
                                    .clipped()
                                    .cornerRadius(30)
                                Text("水鳥")
                                    .fontWeight(.bold)
                                    .font(.system(size: 35, design: .rounded))
                                    .foregroundColor(.black)
                                    .padding(EdgeInsets(top: 0, leading: imgwidth * 0.5 - 50, bottom: 0, trailing: imgwidth * 0.5 - 50))
                                    .cornerRadius(10)
                                    .padding(EdgeInsets(top: imgheight-40, leading: 15, bottom: 0, trailing: 15))
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .top, endPoint: .bottom))
                                    .cornerRadius(30)
                                    .padding()
                            }
                        }
                        
                        NavigationLink{
                            plant()
                        }label: {
                            ZStack{
                                Image("plant")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: imgwidth, height: imgheight)
                                    .clipped()
                                    .cornerRadius(30)
                                Text("植物")
                                    .fontWeight(.bold)
                                    .font(.system(size: 35, design: .rounded))
                                    .foregroundColor(.black)
                                    .padding(EdgeInsets(top: 0, leading: imgwidth * 0.5 - 50, bottom: 0, trailing: imgwidth * 0.5 - 50))
                                    .cornerRadius(10)
                                    .padding(EdgeInsets(top: imgheight-40, leading: 15, bottom: 0, trailing: 15))
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .top, endPoint: .bottom))
                                    .cornerRadius(30)
                                    .padding()
                            }
                        }
                        
                        NavigationLink{
                            bruh()
                        }label: {
                            ZStack{
                                Image("place")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: imgwidth, height: imgheight)
                                    .clipped()
                                    .cornerRadius(30)
                                Text("地圖")
                                    .fontWeight(.bold)
                                    .font(.system(size: 35, design: .rounded))
                                    .foregroundColor(.black)
                                    .padding(EdgeInsets(top: 0, leading: imgwidth * 0.5 - 50, bottom: 0, trailing: imgwidth * 0.5 - 50))
                                    .cornerRadius(10)
                                    .padding(EdgeInsets(top: imgheight-40, leading: 15, bottom: 0, trailing: 15))
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .top, endPoint: .bottom))
                                    .cornerRadius(30)
                                    .padding()
                            }
                        }

                    }//HStack
                }.offset(y: -15)//scrollview
            }.navigationBarHidden(true)//VSyack
        }//navigationview
        .navigationViewStyle(StackNavigationViewStyle())
    }//var body: some view
}
