//
//  InterestsSubview.swift
//  App
//
//  Created by Haakon Langaas Lageng on 21/08/2022.
//

import SwiftUI
import SwiftUIFlow
import Core

struct InterestsSubview: View {
	
	private let friend: UserInfo
	
	init(_ friend: UserInfo) {
		self.friend = friend 
	}
	
	var body: some View {
		VStack(alignment: .leading) {
			Text("Interests")
				.font(.subTitle)
				.foregroundStyle(SharedStyles.titleStyle())
			
			Flow(.vertical, alignment: .topLeading) {
				ForEach(friend.interests) {interest in
					InterestItemView(title: interest.name, icon: interest.image, sharedInterest: interest.inCommon)
				}
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
		InterestsSubview(UserInfo())
    }
}
