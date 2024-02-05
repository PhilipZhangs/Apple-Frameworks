//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by 张胖子 on 2024-02-03.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
