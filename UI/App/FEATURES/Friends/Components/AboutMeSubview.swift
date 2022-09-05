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
		VStack(alignment: .leading, spacing: 10) {
			Text("About me")
				.font(.subTitle)
				.foregroundStyle(SharedStyles.titleStyle())
			
			Text(friend.description)
				.fontWithLineHeight(font: .aboutMeText, lineHeight: 24)
				.foregroundColor(.aboutMeText)
		}
		.padding()
	}
}

struct AboutMeSubview_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeSubview(UserInfo())
    }
}
