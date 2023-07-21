//
//  UIApplication_extension.swift
//  UsefulExtensions
//
//  Created by Gil Estes on 1/27/22.
//

import SwiftUI

extension UIApplication {
	
//	 Returns the current Application Bundle
	static var appVersion: String {
		return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "Not Defined"
	}
	
//	 Ends editing for current application
	func endEditing() {
		sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
	
//	 KeyWindow for the rootViewController
	var currentKeyWindow: UIWindow? {
		UIApplication.shared.connectedScenes
			.filter { $0.activationState == .foregroundActive }
			.map { $0 as? UIWindowScene }
			.compactMap { $0 }
			.first?.windows
			.filter { $0.isKeyWindow }
			.first
	}

//	Locate the rootViewController
	var rootViewController: UIViewController? {
		currentKeyWindow?.rootViewController
	}
	
}
