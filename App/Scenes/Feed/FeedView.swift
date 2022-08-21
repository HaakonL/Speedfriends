//
//  MeasureView.swift
//  App
//
//  Created by Haakon Langaas Lageng on 04/05/2022.
//

import SwiftUI

struct FeedView : View {
	
	var body: some View {
		VStack {
			Text("Feed")
			Spacer()
		}
	}
}

struct FeedPreview : PreviewProvider {
	static var previews: some View {
		MainView(selectedTab: TabItem.feed)
	}
}
