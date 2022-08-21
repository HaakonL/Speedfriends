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
				.padding(15)
				
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
				.padding()
				
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
				}
				.padding(15)
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
