//
//  ContentView.swift
//  school project
//
//  Created by Jack on 2022/3/15.
//


import SwiftUI



    
struct ContentView: View {
   // @State private var navigateTo = ""
   // @State private var isActive = false
    let imgheight = UIScreen.main.bounds.height -  (UIApplication.shared.statusBarFrame.size.height + 140)
    
    var body: some View {
        NavigationView {
            VStack {
                    HStack {
                        Text("選取主題")
                            .padding()
                            .font(.largeTitle.bold())
                        Spacer()
                       
                                   /*Menu {
                                       Button("item1") {
                                           self.navigateTo = "test1"
                                           self.isActive = true
                                       }
                                       Button("item2") {
                                           self.navigateTo = "test2"
                                           self.isActive = true
                                       }
                                   } label: {
                                       Image(systemName: "gearshape")
                                           .padding(.horizontal)
                                           .font(.largeTitle)
                                           .foregroundColor(.blue)
                                   }
                                   .background(
                                       NavigationLink(destination: Text(self.navigateTo), isActive: $isActive) {
                                           settings()
                                       })*/
                               
                        NavigationLink {
                            Text("23")
                            } label: {
                                
                            Image(systemName: "gearshape")
                                .padding()
                                .font(.largeTitle)
                                .foregroundColor(.blue)
                        }
                    }.offset(y:10)
                
                //Spacer()
                //ScrollView {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing:20){
                            NavigationLink{
                                birdmenu()
                            }label: {
                                ZStack{
                                    Image("bird")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 350, height: imgheight )
                                        .clipped()
                                        .cornerRadius(30)
                                    Text("水鳥")
                                        .fontWeight(.bold)
                                        .font(.system(size: 35, design: .rounded))
                                        .foregroundColor(.black)
                                        .padding(EdgeInsets(top: 0, leading: 125, bottom: 0, trailing: 125))
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
                                        .frame(width: 350, height: imgheight)
                                        .clipped()
                                        .cornerRadius(30)
                                    Text("植物")
                                        .fontWeight(.bold)
                                        .font(.system(size: 35, design: .rounded))
                                        .foregroundColor(.black)
                                        .padding(EdgeInsets(top: 0, leading: 125, bottom: 0, trailing: 125))
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
                                        .frame(width: 350, height: imgheight)
                                        .clipped()
                                        .cornerRadius(30)
                                    Text("地圖")
                                        .fontWeight(.bold)
                                        .font(.system(size: 35, design: .rounded))
                                        .foregroundColor(.black)
                                        .padding(EdgeInsets(top: 0, leading: 125, bottom: 0, trailing: 125))
                                        .cornerRadius(10)
                                        .padding(EdgeInsets(top: imgheight-40, leading: 15, bottom: 0, trailing: 15))
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .top, endPoint: .bottom))
                                        .cornerRadius(30)
                                        .padding()
                                }
                            }

                        }//HStack
                    }.offset(y: -15)//scrollview
                //}//Scrollview
            }.navigationBarHidden(true)
            //.navigationBarTitleDisplayMode(.inline)
                
            //VStack
                /*
                .navigationTitle("選取主題")
                .navigationBarItems(
                    trailing: NavigationLink (
                        destination: settings()
                    ) {
                        Image(systemName: "gearshape")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                            .offset(y: 50)
                    }
                )*/
                /*.toolbar(content: {
                    ToolbarItem {
                        NavigationLink {
                            settings()
                        } label: {
                            Image(systemName: "gearshape")
                                .font(.largeTitle)
                                .foregroundColor(.blue)
                                .offset(y: 50)
                        }
                    }
                })*/
        }//navigationview
    }//var body: some view
}


