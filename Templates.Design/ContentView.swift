//
//  ContentView.swift
//  Templates.Design
//
//  Created by Prajjwal on 24/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab = "house"
    var body: some View {
        ZStack(alignment: .bottom){
           
            
            

            
            Color.green.ignoresSafeArea()
            CustomTabBar(selectedTab: $selectedTab)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTabBar : View{
    
    @Binding var selectedTab : String
    
    
    var body:some View{
        
        HStack(spacing :0){
            
            TabBarButton(image: "house", selectedTab: $selectedTab)
            TabBarButton(image: "bookmark", selectedTab: $selectedTab)
            TabBarButton(image: "message", selectedTab: $selectedTab)
            TabBarButton(image: "book", selectedTab: $selectedTab)
            
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(30)
        .padding(.horizontal)
        
        
        
    }
}

struct TabBarButton : View{
    
    var image : String
    @Binding var selectedTab : String
    var body : some View{
        
        GeometryReader{reader in
            
            Button(action: {
                withAnimation{
                    selectedTab = image
                }
                
            } , label: {
                
                Image(systemName: image)
                    .font(.system(size: 25,weight : .semibold))
                    .foregroundColor(.black)
                    .offset(y :selectedTab == image ? -10 :0)
                    
                
                
                
                
            })
                .frame(maxWidth : .infinity,maxHeight : .infinity)
            
            
            
        }
        .frame(height : 50)
        
    }
}
