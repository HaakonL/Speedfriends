//
//  AboutMeSubview.swift
//  App
//
//  Created by Haakon Langaas Lageng on 21/08/2022.
//

import SwiftUI

struct AboutMeSubview: View {
	var body: some View {
		VStack(alignment: .leading, spacing: 10) {
			Text("About me")
				.font(.subTitle)
				.foregroundStyle(SharedStyles.titleStyle())
			
			Text("Jeg er nylig flyttet tilbake til Oslo etter et par år i hjemlandet mitt, Danmark, i følge med min samboer og vår snart to år gamle datter 👪. Nettverket mitt her i byen er fortsatt ganske beskjedent, og det hadde vært veldig hyggelig å utbygge det litt 😀.")
				.fontWithLineHeight(font: .aboutMeText, lineHeight: 24)
				.foregroundColor(.aboutMeText)
		}
		.padding()
	}
}

struct AboutMeSubview_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeSubview()
    }
}
