//
//  CarouselSubview.swift
//  App
//
//  Created by Haakon Langaas Lageng on 21/08/2022.
//

import SwiftUI
import Combine

struct CarouselSubview: View {
	@State private var currentIndex: Int = 0
	private var images = ["woman1", "woman1", "woman1", "woman1", "woman1"]
	
	var body: some View {
		ZStack(alignment: .top) {
			GeometryReader { geometry in
				ImageCarouselView(currentIndex: $currentIndex, numberOfImages: images.count) {
					ForEach(images, id: \.self) { img in
						Image(img)
							.resizable()
							.scaledToFill()
							.frame(width: geometry.size.width, height: geometry.size.height)
							.cornerRadius(16)
					}
				}
			}
			.frame(height: UIScreen.main.bounds.height * 0.5, alignment: .center)
			
			ImageCarouselIndicatorsView(currentIndex: $currentIndex, numberOfImages: images.count)
			
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
						if currentIndex > 0 {
							currentIndex -= 1
						}
					} label: {
						Image("left")
					}
					
					Spacer()
					
					Button {
						if currentIndex < images.count {
							currentIndex += 1
						}
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
				.padding(.bottom, 15)
			}
		}
		.frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height * 0.5)
	}
}

struct CarouselSubview_Previews: PreviewProvider {
    static var previews: some View {
        CarouselSubview()
    }
}
