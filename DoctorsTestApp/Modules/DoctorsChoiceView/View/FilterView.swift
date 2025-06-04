//
//  FilterView.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI

struct FilterView: View {
    @State var selectedOption: SortedOption = .price
    @State var isFilteredPrice: Bool = false
    @State var isFilteredExp: Bool = false
    @State var isFilteredRate: Bool = false
    @State var vm = DoctorsViewModel()
    
    var body: some View {
        HStack(spacing: 1){
        
            ZStack{
                Rectangle()
                    .frame(width: 120, height: 32)
                    .foregroundStyle(vm.selectedButton == .price ? .pink : .white)
                    .clipShape(UnevenRoundedRectangle(topLeadingRadius: 8, bottomLeadingRadius: 8))

                Button {
                    isFilteredPrice.toggle()
                    vm.selectedButton = .price
                    
                } label: {
                    HStack{
                        Text("\(SortedOption.allCases[0].rawValue)")
                            .font(.callout)
                            .foregroundStyle(vm.selectedButton == .price ? .white : .gray)
                        Image(systemName: isFilteredPrice ? "arrow.down" : "arrow.up")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                            .foregroundStyle(vm.selectedButton == .price ? .white : .gray)
                    }
                    
                }
                .tag(SortedOption.price)
            }
            
            ZStack{
                Rectangle()
                    .frame(width: 120, height: 32)
                    .foregroundStyle(vm.selectedButton == .expierence ? .pink : .white)
                
                Button {
                    isFilteredExp.toggle()
                    vm.selectedButton = .expierence
                } label: {
                    HStack{
                        Text("\(SortedOption.allCases[1].rawValue)")
                            .font(.callout)
                            .foregroundStyle(vm.selectedButton == .expierence ? .white : .gray)
                        Image(systemName: isFilteredExp ? "arrow.down" : "arrow.up")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                            .foregroundStyle(vm.selectedButton == .expierence ? .white : .gray)
                    }
                }
                .tag(SortedOption.expierence)
                
                
            }
            
            ZStack{
                Rectangle()
                    .frame(width: 120, height: 32)
                    .foregroundStyle(vm.selectedButton == .rate ? .pink : .white)
                    .clipShape(UnevenRoundedRectangle(bottomTrailingRadius: 8, topTrailingRadius: 8))
                    
                Button {
                        isFilteredRate.toggle()
                        vm.selectedButton = .rate
                } label: {
                    HStack{
                        Text("\(SortedOption.allCases[2].rawValue)")
                            .foregroundStyle(vm.selectedButton == .rate ? .white : .gray)
                            .font(.callout)
                        Image(systemName: isFilteredRate ? "arrow.down" : "arrow.up")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10, height: 10)
                            .foregroundStyle(vm.selectedButton == .rate ? .white : .gray)
                    }
                }
                .tag(SortedOption.rate)
            }
        }
    }
}
