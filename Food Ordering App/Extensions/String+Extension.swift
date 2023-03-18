//
//  String+Extension.swift
//  Food Ordering App
//
//  Created by Ahmet Can Topcu on 18.03.2023.
//

import Foundation

extension String {
    var asURL: URL? {
        return URL(string: self)
    }
}
