//
//  ContentView.swift
//  school project
//
//  Created by Jack on 2022/3/15.
//


import SwiftUI



    
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                /*HStack {
                    Text("選取主題")
                        .padding(.horizontal)
                        .font(.largeTitle.bold())
                    Spacer()
                    NavigationLink {
                        settings()
                    } label: {
                        Image(systemName: "gearshape")
                            .padding(.horizontal)
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                    }
                }*/
                //Spacer()
                ScrollView {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing:20){
                            NavigationLink{
                                birdmenu()
                            }label: {
                                ZStack{
                                    Image("bird")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 350, height: UIScreen.main.bounds.height-150 )
                                        .clipped()
                                        .cornerRadius(30)
                                    Text("水鳥")
                                        .fontWeight(.bold)
                                        .font(.system(size: 35, design: .rounded))
                                        .foregroundColor(.black)
                                        .padding(EdgeInsets(top: 0, leading: 125, bottom: 0, trailing: 125))
                                        .cornerRadius(10)
                                        .padding(EdgeInsets(top: UIScreen.main.bounds.height-190, leading: 15, bottom: 0, trailing: 15))
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
                                        .frame(width: 350, height: UIScreen.main.bounds.height-150)
                                        .clipped()
                                        .cornerRadius(30)
                                    Text("植物")
                                        .fontWeight(.bold)
                                        .font(.system(size: 35, design: .rounded))
                                        .foregroundColor(.black)
                                        .padding(EdgeInsets(top: 0, leading: 125, bottom: 0, trailing: 125))
                                        .cornerRadius(10)
                                        .padding(EdgeInsets(top: UIScreen.main.bounds.height-190, leading: 15, bottom: 0, trailing: 15))
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
                                        .frame(width: 350, height: UIScreen.main.bounds.height-150)
                                        .clipped()
                                        .cornerRadius(30)
                                    Text("地圖")
                                        .fontWeight(.bold)
                                        .font(.system(size: 35, design: .rounded))
                                        .foregroundColor(.black)
                                        .padding(EdgeInsets(top: 0, leading: 125, bottom: 0, trailing: 125))
                                        .cornerRadius(10)
                                        .padding(EdgeInsets(top: UIScreen.main.bounds.height-190, leading: 15, bottom: 0, trailing: 15))
                                        .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.white]), startPoint: .top, endPoint: .bottom))
                                        .cornerRadius(30)
                                        .padding()
                                }
                            }

                        }//HStack
                    }//scrollview
                }//Scrollview
            }   .navigationBarTitle("選取主題")//VStack
                .toolbar(content: {
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
                })
        }//navigationview
    }//var body: some view
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
Button {
    print("Edit button was tapped")
} label: {
    Image(systemName: "pencil")
}
*/
