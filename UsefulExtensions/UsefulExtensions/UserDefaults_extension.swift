//
//  UserDefaults_extension.swift
//  UsefulExtensions
//
//  Created by Gil Estes on 1/27/22.
//

import Foundation

extension UserDefaults {
	/* Check for the existence of an object in UserDefaults for a given key
	 */
	func valueExists(forKey key: String) -> Bool {
		return object(forKey: key) != nil
	}
}
