//
//  ContentView.swift
//  Sample
//
//  Created by Vinicius Soares on 02/11/22.
//

import SwiftUI








struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]), startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 100){
                Text("Recife, Brasil")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("30°C")
                        .font(.system(size: 79, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 10){
                    
                    WeatherDayView(dayOfWeek: "MON", imageDay: "cloud.sun.fill", temperature: 25)
                    
                    WeatherDayView(dayOfWeek: "TUE", imageDay: "sun.max.fill", temperature: 25)
                
                    WeatherDayView(dayOfWeek: "WED", imageDay: "wind.snow", temperature: 30)
                
                    WeatherDayView(dayOfWeek: "THU", imageDay: "cloud.rain.fill", temperature: 22)
                    
                    WeatherDayView(dayOfWeek: "FRI", imageDay: "cloud.sun.fill", temperature: 24)
                    
                    WeatherDayView(dayOfWeek: "SAT", imageDay: "cloud.rain.fill", temperature: 23)
                
                    WeatherDayView(dayOfWeek: "SUN", imageDay: "wind.snow", temperature: 25)
                }
            
                Spacer()
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageDay: String
    var temperature: Int
    
    
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageDay)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
