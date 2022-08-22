//
//  CarouselSubview.swift
//  App
//
//  Created by Haakon Langaas Lageng on 21/08/2022.
//

import SwiftUI

struct CarouselSubview: View {
	var body: some View {
		ZStack(alignment: .top) {
			
			Image("woman1")
				.resizable()
				.scaledToFill()
				.cornerRadius(16)
			
			CarouselIndicators()
			
			Rectangle()
				.fill(LinearGradient(
					colors: [.imageGradientStart, .imageGradientEnd],
					startPoint: .init(x: 0.5, y: 0.6),
					endPoint: .init(x: 0.5, y: 0.98)
				))
				.cornerRadius(16)
			
			VStack {
				HStack {
					Image("online")
					Spacer()
					
					Button {
						
					} label: {
						Image("flag")
					}
				}
				.padding(.horizontal, 15)
				.padding(.top, 22)
				
				Spacer()
				
				HStack {
					Button {
						
					} label: {
						Image("left")
					}
					
					Spacer()
					
					Button {
						
					} label: {
						Image("right")
					}
				}
				.padding(.horizontal, 8)
				
				Spacer()
				
				HStack(alignment: .center) {
					VStack(alignment: .leading) {
						Text("Silje Marie, 33")
							.font(.friendsName)
							.foregroundColor(.white)
							.shadow(color: .textDropShadow, radius: 1.5, x: 1.5, y: 1.5)
						
						Text("Oslo, Norway")
							.font(.friendsLocation)
							.foregroundColor(.white)
							.shadow(color: .textDropShadow, radius: 1.5, x: 1.5, y: 1.5)
					}
					
					Spacer()
					
					Button {
						
					} label: {
						Image("cta")
					}
					.buttonStyle(.plain)
					.padding(.top, 3)
				}
				.padding(.horizontal, 15)
			}
		}
		.frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height * 0.5)
	}
}

struct CarouselIndicators: View {
	var body: some View {
		HStack(alignment: .center, spacing: 4) {
			Rectangle()
				.fill(.carouselIndicator)
				.frame(height: 2)
				.cornerRadius(4)
			
			Rectangle()
				.fill(.white)
				.frame(height: 2)
				.cornerRadius(4)
			
			Rectangle()
				.fill(.carouselIndicator)
				.frame(height: 2)
				.cornerRadius(4)
		}
		.padding(.horizontal, 15)
		.padding(.top, 8)
	}
}

struct CarouselSubview_Previews: PreviewProvider {
    static var previews: some View {
        CarouselSubview()
    }
}
