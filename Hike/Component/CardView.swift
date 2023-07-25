//
//  CardView.swift
//  Hike
//
//  Created by Pankaj Nafria on 7/25/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()

            VStack {
                // MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight,
                                             .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom)
                        )
                        Spacer()
                        Button {
                            // ACTION: Show a sheet
                            print("The Button was pressed.")
                        } label: {
                           CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and famlies")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }// :HEADER
                .padding(.horizontal, 30)
                
                // MARK: - MAIN CONTENT
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color.customIndigoMedium,
                                    Color.customSalmonLight],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                // MARK: - FOOTER
            }
        }//: CARD
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
