//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by 张胖子 on 2024-02-01.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Apple Frameworks")
            }
        .background(Color.black)
        .accentColor(Color(.label))
        }
    }

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
            
    }
}
