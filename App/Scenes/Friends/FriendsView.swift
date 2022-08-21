//
//  MapView.swift
//  App
//
//  Created by Haakon Langaas Lageng on 05/05/2022.
//

import SwiftUI
import Resolver

struct FriendsView: View {
	
	@StateObject private var viewModel: FriendsViewModel = Resolver.resolve()
	
    var body: some View {
		ScrollView{
			VStack {
				CarouselSubview()
				InterestsSubview()
				AboutMeSubview()
				Spacer()
			}
		}
    }
}

struct FriendsPreview: PreviewProvider {
    static var previews: some View {
		Group {
			MainView(selectedTab: TabItem.friends)
				.preferredColorScheme(.dark)
			
			MainView(selectedTab: TabItem.friends)
				.preferredColorScheme(.light)
		}
    }
}
