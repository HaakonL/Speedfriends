//
//  SharedStyles.swift
//  App
//
//  Created by Haakon Langaas Lageng on 21/08/2022.
//

import SwiftUI

struct SharedStyles {
	static func titleStyle() -> LinearGradient {
		return LinearGradient(
			colors: [.titleGradientStart, .titleGradientEnd],
			startPoint: .leading,
			endPoint: .trailing
		)
	}
}
