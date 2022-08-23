//
//  ImageCarouselIndicators.swift
//  App
//
//  Created by Haakon Langaas Lageng on 23/08/2022.
//

import SwiftUI

struct ImageCarouselIndicatorsView: View {
	@Binding public private(set) var currentIndex: Int
	public private(set) var numberOfImages: Int
	
	var body: some View {
		HStack(alignment: .center, spacing: 4) {
			ForEach(0 ..< numberOfImages, id: \.self) { index in
				Rectangle()
					.fill(index == currentIndex ? .white : .carouselIndicator)
					.frame(height: 2)
					.cornerRadius(4)
			}
		}
		.padding(.horizontal, 15)
		.padding(.top, 8)
	}
}
