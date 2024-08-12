//
//  CardView.swift
//  hike
//
//  Created by Charles Michael on 8/9/24.
//

import SwiftUI

struct CardView: View {
//    PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
//    FUNCTIONS
    
    func randomImage(){
        print("button was pressed")
        print("old image number =\(imageNumber)")
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
       
        imageNumber = randomNumber
    }
    
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
//                Header
                VStack(alignment:.leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size:52))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight, .customGrayMedium],
                                               startPoint: .top,
                                           endPoint: .bottom)
                            )
                        Spacer()
                        
                        Button {
//                           ACTION: show a sheet
                            isShowingSheet.toggle()
                        } label: {
                           CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingsView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
//                main content
                
                ZStack {
                    CustomCircleView()
                    
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
//                footer
                Button {
                    // Genenrate a random number
                    randomImage()
                    
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .colorGreenLight,
                                    .colorGreenMedium
                                ], 
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.25), radius: 0.25, x:1, y:2)
                }
                .buttonStyle(GradientButton())
//                .buttonStyle(.borderedProminent)
//                .tint(.indigo)
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
