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
            }
            .padding(.all).background(.green).foregroundColor(.white).shadow(radius: 20)
            
            
            
            Spacer()
            
            
            TextField("New Item", text: $newItemEntry)
                .padding(.all)
                .background(Color(hue: 1.0, saturation: 0.024, brightness: 0.839))
                .foregroundColor(.white)
            
            Spacer()
            Button{
                myGrocery.remove(at: 0)
            }label: {
                Text("Remove")
            }.padding(.all).background(.red).foregroundColor(.white).shadow(radius: 20)
            
            
        }.padding()
        
        
    }
    
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
