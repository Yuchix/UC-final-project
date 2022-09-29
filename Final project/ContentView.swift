//
//  ContentView.swift
//  Final project
//
//  Created by Bo3lwah on 23/09/2022.
//

import SwiftUI
struct Gm3eya: Identifiable {
    let id  = UUID()
    let floor : Int
    let section : Int
    let shelf : Int
    let item  : String
}

struct ContentView: View {
    var items = [Gm3eya(floor: 1, section: 19, shelf: 52, item: "قصدير")
                 , Gm3eya(floor: 1, section: 16, shelf: 48, item: "موس حلاقة"), Gm3eya(floor: 1, section: 17, shelf: 50, item: "ملاعق"),
                 Gm3eya(floor: 1, section: 17, shelf: 51, item: "اشواك"),
                 Gm3eya(floor: 1, section: 17, shelf: 50, item: "غطاء للشعر"),
                 Gm3eya(floor: 1, section: 25, shelf: 57, item: "اعواد اذن"), Gm3eya(floor: 1, section: 29, shelf:  30, item: "بهارات ارض الطبيعة")
                 ,Gm3eya(floor: 1, section: 23, shelf: (55-54), item: "فرش اسنان") , Gm3eya(floor: 1, section: 16, shelf: 49, item: "أكواب قهوة"), Gm3eya(floor: 1, section: 26, shelf: 39, item: "مصاصات أطفال"),Gm3eya(floor: 0, section: 55, shelf: 10, item:"المعكرونة و انواعها"), Gm3eya(floor: 0, section: 55, shelf: 17, item: "عسل")
                 ,Gm3eya(floor: 0, section: 5, shelf: 8, item: "برنقلز")
                 
                 , Gm3eya(floor: 0, section: 2, shelf: 1, item: "مكسرات الرفاعي")
                 ,Gm3eya(floor: 0, section: 2, shelf: 1, item: "فشار")
                 , Gm3eya(floor: 0, section: 55, shelf: (21), item: "شاي لبتون")
                 , Gm3eya(floor: 0, section: 55, shelf: 19, item: "كورنفلكس")
                 , Gm3eya(floor: 0, section: 3, shelf: 4, item: "كاكاو كندر")
                 , Gm3eya(floor: 0, section: 3, shelf: 4, item: "كاكاو نوتيلا")
                 , Gm3eya(floor: 0, section: 5, shelf: 10, item: "شيبس و انواعها")
                 , Gm3eya(floor: 0, section: 5, shelf: 12, item: "كاتشب")
                 , Gm3eya(floor: 0, section: 5, shelf: 12, item: "زيت دلال")
                
                 , Gm3eya(floor: 0, section:55 , shelf: 16, item: "طحين")
                 , Gm3eya(floor: 0, section: 55, shelf: 14, item: "سكر")
                 , Gm3eya(floor: 0, section: 55, shelf: 24, item: "ليمون مركز")
                 , Gm3eya(floor: 0, section: 55, shelf: 24, item: "ماء ورد")
                 
                 
                 
                 
                 
                 
    ]
    var body: some View {
        
        //        VStack {
        //            ForEach (items)
        //            {item in
        //
        //                Text("دور: \(item.floor)")
        //                Text("قسم : \(item.section)")
        //                Text("رف : \(item.shelf)")
        //                Text("السلعة : \(item.item)")
        
        //
        //
        //        }
        
        
        NavigationView {
            ZStack{
                Color.orange
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Image("العديلية")
                        
                            .ignoresSafeArea()
                            .cornerRadius(20)
                        Text("جمعية العديلية ترحب بكم ")
                            .font(.largeTitle)
                        
                    }  .padding(.bottom, 200)
                    NavigationLink(destination:   ZStack {
                        
                        
                        
                        
                        
                        Color.orange
                            .ignoresSafeArea()
                        
                        ScrollView() {
                            VStack{
                                ForEach (items){
                                    item in
                                    
                                    HStack {
                                        
                                        Image(item.item)
                                            .resizable()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding()
                                        NavigationLink ( destination:
                                                            ZStack{
                                            Color.orange
                                                .ignoresSafeArea()
                                            
                                            HStack{
                                                VStack {
                                                    
                                                    Text("دور: \(item.floor)")
                                                        .padding()
                                                        .font(.largeTitle)
                                                        .foregroundColor(.white)
                                                    
                                                    Text("قسم : \(item.section)")
                                                        .padding()
                                                        .font(.title)
                                                        .foregroundColor(.white)
                                                    
                                                    Text("رف : \(item.shelf)")
                                                        .padding()
                                                        .font(.title)
                                                        .foregroundColor(.white)
                                                      Spacer()
                                                    Image("العديلية")
                                                        .cornerRadius(20)
                                                }
                                            }
                                            
                                        }
                                                         
                                                         
                                                         
                                                         
                                                         
                                                         
                                        )
                                        {
                                            
                                            
                                            Text(item.item)
                                                .padding()
                                                .font(.title2)
                                            
                                            
                                                .frame(width: 200, height:
                                                        80)
                                                .background(Color.white)
                                                .cornerRadius(40)
                                        }
                                    }
                                }
                            }.padding(.trailing)
                            
                        }
                        
                    }.navigationBarHidden(true)
                      
                        )
                      {
                        Text("عرض المنتجات ")
                            .font(.largeTitle)
                            .fontWeight(.black)
                           
                            .navigationTitle("أهلًا و سهلًا")
               
                          
                    }
                }
                
            }
            
            
            
            
            
            
            
            
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
