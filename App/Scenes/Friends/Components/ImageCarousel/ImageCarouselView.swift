//
//  ImageCarouselView.swift
//  App
//
//  Created by Haakon Langaas Lageng on 23/08/2022.
//

import SwiftUI

struct ImageCarouselView<Content: View>: View {
	private var spacing = 10.0
	private var numberOfImages: Int
	private var content: Content
	@Binding private var currentIndex: Int
	
	init(currentIndex: Binding<Int>, numberOfImages: Int, @ViewBuilder content: () -> Content) {
		self._currentIndex = currentIndex
		self.numberOfImages = numberOfImages
		self.content = content()
	}
	
	var body: some View {
		GeometryReader { geometry in
			HStack(spacing: self.spacing) {
				self.content
			}
			.frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
			.offset(x: getOffset(self.currentIndex, self.numberOfImages - 1, geometry.size.width, self.spacing), y: 0)
			.animation(.spring())
		}
	}
	
	func getOffset(_ currentIndex: Int, _ lastIndex: Int, _ width: CGFloat, _ spacing: CGFloat) -> CGFloat {
		let delta = -spacing * CGFloat(currentIndex)
		return (CGFloat(currentIndex) * -width) + delta
	}
}
