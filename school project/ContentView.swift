//
//  ContentView.swift
//  school project
//
//  Created by Jack on 2022/3/15.
//


import SwiftUI



    
struct ContentView: View {
    @State private var navigateTo: AnyView?
    //@State private var navigateTo :String
    @State private var isNavigaionActive = false
    //@State private var isActive = false
    let imgheight = UIScreen.main.bounds.height -  (UIApplication.shared.statusBarFrame.size.height + 140)
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
                            navigateTo = AnyView(information())
                            isNavigaionActive = true
                                    } label: {
                                Label("Create an Item", systemImage: "doc")
                                                }
                        Link(destination: URL(string: "https://docs.google.com/forms/d/1PeDNUt6CZg_WQDCljMqgLTjQUi407pgzN1qz_n6GZPg/edit")!, label: {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.black)
                            Spacer()
                            Text("意見回饋")
                        })
                       
                        /*NavigationLink{
                            information()
                        }label: {
                            Image(systemName: "info.circle")
                                .foregroundColor(.black)
                            Spacer()
                            Text("關於APP")
                        }*/
                       
                        /*Button("item1") {
                                            self.navigateTo = "test1"
                                            self.isActive = true
                                        }*/
                        /*Button(action: {}) {
                            NavigationLink(destination: information()){
                                    HStack{
                                        Image(systemName: "info.circle")
                                            .foregroundColor(.black)
                                        Spacer()
                                        Text("關於APP")
                                    }
                                }
                        }*/
                        /*NavigationLink{
                            information()
                        }label: {
                            HStack{
                                Image(systemName: "info.circle")
                                    .foregroundColor(.black)
                                Spacer()
                                Text("關於APP")
                            }
                        }*/
                                                
                                                
                        /*
                        Button {
                           navigateTo = AnyView(birdmenu())
                        } label: {
                            HStack{
                                Image(systemName: "info.circle")
                                    .foregroundColor(.black)
                                Spacer()
                                Text("關於APP")
                            }
                        }
                        Link(destination: URL(string: "https://docs.google.com/forms/d/1PeDNUt6CZg_WQDCljMqgLTjQUi407pgzN1qz_n6GZPg/edit")!, label: {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.black)
                            Spacer()
                            Text("意見回饋")
                        })
                        */
                    } label: {
                       Image(systemName: "list.bullet")
                           .padding()
                           .font(.largeTitle)
                           .foregroundColor(.blue)
                    }
                    
                    /*
                    Menu {
                       Button {
                           self.navigateTo = "birdmenu()"
                           isNavigaionActive = true
                       } label: {
                           
                           Image(systemName: "info.circle")
                               .foregroundColor(.black)
                           Spacer()
                           Text("關於APP")
                       }
                       Button {
                           self.navigateTo = "feedback()"
                           isNavigaionActive = true
                       } label: {
                           Image(systemName: "square.and.pencil.circle")
                               .foregroundColor(.black)
                           Spacer()
                           Text("意見回饋")
                       }
                    } label: {
                       Image(systemName: "list.bullet")
                           .padding()
                           .font(.largeTitle)
                           .foregroundColor(.blue)
                    }   .background(
                            NavigationLink(destination: self.navigateTo, isActive: $isNavigaionActive) {
                                EmptyView()
                            }
                        )
                    */
                    
                }.offset(y:20)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing:20){
                        NavigationLink{
                            birdmenu()
                            //information()
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
            }.navigationBarHidden(true)//VSyack
        }//navigationview
    }//var body: some view
}
