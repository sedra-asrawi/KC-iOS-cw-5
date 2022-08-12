//
//  ContentView.swift
//  CW5
//
//  Created by Sedra Asrawi on 11/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var snacks = ["Snack","salt chips","KDD Chocolate Milk","KDD Coffee"]
    @State var fruits = ["Avocado","Tomato"]
    
    @State var NewItem = ""
    
    @State var other = ["Frozen chicken"]
    
    
    
    var body: some View {
        
       
            VStack {
                NavigationView {
                    List {
                        Section(header: Text("Snaks")
                            .font(.system(size: 17))
                            .foregroundColor(.blue))
                        {
                            ForEach(snacks, id: \.self) {
                             snack in
                        HStack {
                            Image(snack)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height:50)
                             .padding()
                            Text(snack.capitalized)
                                .padding()
                                .font(.system(size: 15))
                               
                                
                        }
                            }
                            .onDelete { IndexSet in
                                snacks.remove(atOffsets: IndexSet)
                            }
                            }
                        
                        Section(header: Text("fruits & vegetables")
                            .font(.system(size: 17))
                            .foregroundColor(.blue))
                        {
                            ForEach(fruits, id: \.self) {
                                frute in
                                HStack {
                                    Image(frute)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height:50)
                                     .padding()
                                    Text(frute.capitalized)
                                        .padding()
                                        .font(.system(size: 15))
                                
                                }
                                
                                
                            }
                            .onDelete { IndexSet in
                                fruits.remove(atOffsets: IndexSet)
                            }
                        }
                        
                        
                        Section(header: Text("others")
                            .font(.system(size: 17))
                            .foregroundColor(.blue))
                         {
                            ForEach(other, id: \.self) {
                                item in
                                HStack {
                                    Image(item)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height:50)
                                     .padding()
                                    Text(item.capitalized)
                                        .padding()
                                        .font(.system(size: 15))
                                
                                }
                                
                                
                            }
                            .onDelete { IndexSet in
                                other.remove(atOffsets: IndexSet)
                            }
                        }
                        
                        
                        
                    }
                        .navigationTitle("My Basket")
                        .navigationBarItems(leading: EditButton())
                        .background(Color("Color1"))
                    
                }
                
             
                HStack{
                    Spacer()
                    Button {
                        if  NewItem == "Gummy bears" {
                            snacks.append(NewItem) }
                        else if
                            NewItem == "Oranges" {
                                fruits.append(NewItem) }
                        else {
                            other.append(NewItem)
                        }
                        
                        
                    }
                    
                label: { Image(systemName: "plus")}
                        
                        .padding()
                        
                        
            TextField("\t type here", text: $NewItem)
                    
                    
                    
                    
    
                    Button {
                        snacks.remove(at: 0)
                    } label: {
                        Image(systemName: "minus")
                    }
                    
                    .padding()
                    
                     Spacer()
                    

                    
                }
                
            }
            
            
          
        
        
       
    }

        }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}

