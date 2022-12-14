//
//  AboutMeSubview.swift
//  App
//
//  Created by Haakon Langaas Lageng on 21/08/2022.
//

import SwiftUI
import Core

struct AboutMeSubview: View {
	private let friend: UserInfo
	
	init(_ friend: UserInfo) {
		self.friend = friend
	}
	
	var body: some View {
		HStack {
			VStack(alignment: .leading, spacing: 10) {
				Text("About me")
					.font(.subTitle)
					.foregroundStyle(SharedStyles.titleStyle())
				
				Text(friend.description)
					.fontWithLineHeight(font: .aboutMeText, lineHeight: 24)
					.foregroundColor(.aboutMeText)
				
				Spacer()
			}
			Spacer()
		}
		.padding()
	}
}

struct AboutMeSubview_Previews: PreviewProvider {
    static var previews: some View {
		VStack(alignment: .leading) {
			AboutMeSubview(UserInfo(
				name: "Kåre",
				age: 20,
				location: "Hjelmeland",
				images: [],
				description: "Jeg liker å sykkkle",
				interests: []
			))
		}
    }
}
