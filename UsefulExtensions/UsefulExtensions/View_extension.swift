//
//  View_extension.swift
//  UsefulExtensions
//
//  Created by Gil Estes on 7/21/23.
//

import Foundation
import SwiftUI

/**
 Handy extention implementing a ViewModifier to allow passing in a conditional hidden value to show/hide any view
 
 The following will hide a Toggle control if the operation is not completed. If it is completed
 then the Toggle control will show.
 
 Toggle()
 .isHidden(hidden: self.operationCompleted == false)
 */
struct IsHidden: ViewModifier {
	var hidden = false
	var remove = false
	func body(content: Content) -> some View {
		if hidden {
			if remove {
				
			} else {
				content.hidden()
			}
		} else {
			content
		}
	}
}

extension View {
	func isHidden(hidden: Bool = false, remove: Bool = false) -> some View {
		modifier(
			IsHidden(
				hidden: hidden,
				remove: remove))
	}
}
