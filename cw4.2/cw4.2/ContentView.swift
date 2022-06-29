//
//  ContentView.swift
//  cw4.2
//
//  Created by Batool Hussain on 29/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var myGrocery = ["Apple", "Orange", "Tomato"]
    @State var newItemEntry = ""
    
    var body: some View {
        VStack{
            Text("My Grocery🛍")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            List (myGrocery, id:\.self) { product in
                
                HStack{
                    Image(product)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                    Text(product)
                        .font(.title)
                        .fontWeight(.black)
                    
                    
                }
            }
            
        }
        HStack{
            
            
            Button{
                myGrocery.append(newItemEntry)
            }label: {
                Text("Add")
            }.background(.green)
                
                
            
            Spacer()
            
            TextField("New Item", text: $newItemEntry)
                .background(.black)
                .foregroundColor(.white)
            
            Spacer()
            Button{
                myGrocery.remove(at: 0)
            }label: {
                Text("Remove")
            }.background(.red)
            
        }.padding()
        
            
    }
    
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
