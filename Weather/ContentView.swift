//
//  ContentView.swift
//  Weather
//
//  Created by Mohammed Rashid on 23/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,Color("lightBlue")],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 30,weight: .medium, design: .default))
                    .foregroundColor(.white)
                VStack{
                    Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    Text("32°c")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack(spacing:20){
                    ExtractedView(dayOfWeek: "SUN", imageName: "sun.dust.fill", temprature: "48°c");     ExtractedView(dayOfWeek: "MON", imageName: "cloud.snow.fill", temprature: "80°c");   ExtractedView(dayOfWeek: "TUE", imageName: "cloud.drizzle.fill", temprature: "56°c");     ExtractedView(dayOfWeek: "WED", imageName: "wind", temprature: "55°c");   ExtractedView(dayOfWeek: "THU", imageName: "cloud.moon.bolt.fill", temprature: "76°c");
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct ExtractedView: View {
    var dayOfWeek: String
    var imageName: String
    var temprature: String
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName).renderingMode(.original).resizable().aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text(temprature)
                .font(.system(size: 22,weight: .medium))
                .foregroundColor(.white)
        }
    }
}
