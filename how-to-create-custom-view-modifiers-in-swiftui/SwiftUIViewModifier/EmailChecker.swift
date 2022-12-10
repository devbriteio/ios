//
//  EmailChecker.swift
//  SwiftUIViewModifier
//
//  Created by Muhammad Osama Naeem on 12/9/22.
//

import Foundation

class EmailChecker: ObservableObject {
    let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    @Published var email = ""
    
    func isValid(_ email: String) -> Bool {
        print(email.range(of: pattern, options: .regularExpression) != nil)
        return (email.range(of: pattern, options: .regularExpression) != nil)
    }
}
