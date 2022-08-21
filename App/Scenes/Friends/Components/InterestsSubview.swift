//
//  InterestsSubview.swift
//  App
//
//  Created by Haakon Langaas Lageng on 21/08/2022.
//

import SwiftUI
import SwiftUIFlow

struct InterestsSubview: View {
	var body: some View {
		VStack(alignment: .leading) {
			Text("Interests")
				.font(.subTitle)
				.foregroundStyle(SharedStyles.titleStyle())
			
			Flow(.vertical, alignment: .topLeading) {
				InterestItemView(title: "Swimming", icon: "swimming")
				InterestItemView(title: "Running", icon: "running")
				InterestItemView(title: "Healthy food", icon: "healthy-food")
				InterestItemView(title: "Sailing", icon: "sailing", sharedInterest: true)
				InterestItemView(title: "Astronomy", icon: "astronomy")
				InterestItemView(title: "Travelling", icon: "travelling")
				InterestItemView(title: "Art", icon: "art")
				InterestItemView(title: "Music", icon: "music")
				InterestItemView(title: "Basketball", icon: "basketball", sharedInterest: true)
			}
		}
		.padding()
	}
}

struct InterestItemView: View {
	@State var title: String
	@State var icon: String
	@State var sharedInterest: Bool = false
	
	var body: some View {
		ZStack {
			HStack(alignment: .center, spacing: 8) {
				Image(icon)
				
				Text(title)
					.font(.interestText)
			}
			.padding(.horizontal, 13)
			.padding(.vertical, 8)
			.background(.interestBackground)
			.cornerRadius(50)
			.foregroundColor(.interestText)
			.overlay(
				RoundedCorner(radius: 50.0, corners: [.allCorners])
					.stroke(LinearGradient(
						colors: [.interestGradientBorderStart, .interestGradientBorderEnd],
						startPoint: .init(x: 0, y: 0),
						endPoint: .init(x: 1, y: 1)
					), lineWidth: sharedInterest ? 1 : 0)
			)
		}
	}
}

struct InterestsSubview_Previews: PreviewProvider {
    static var previews: some View {
        InterestsSubview()
    }
}
