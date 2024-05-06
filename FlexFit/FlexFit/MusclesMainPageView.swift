//
//  WorkoutsMainPageView.swift
//  FlexFit
//
//  Created by Harshul Jain on 4/27/24.
//

import SwiftUI

struct WorkoutsMainPageView: View {
    
    
    let columns = [
        GridItem(.adaptive(minimum:150))
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns){
                    
                }
                
            }
        }
    }
}

#Preview {
    WorkoutsMainPageView()
}
