//
//  ContentView.swift
//  calculator
//
//  Created by admin on 11/9/20.
//

import SwiftUI
    
struct ContentView: View {
var total: Double = 0
    var body: some View {
        VStack{
            Text("\(total.removeZerosFromEnd())").font(.system(size: 80))
              .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottomTrailing)
              .padding(.trailing, 30)
            HStack{
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("AC").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.black)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("+/-").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.black)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("%").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.black)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text(" ÷").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
            }
            HStack{
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("7").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("8").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("9").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text(" x").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
            }
            HStack{
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("4").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("5").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("6").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text(" -").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
            }
            HStack{
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("1").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("2").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("3").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text(" +").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
            }
            HStack{
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text("0").frame(width: 160, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text(".").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
                Button(action: {
                    print("Button pressed")
                }, label: {
                    Text(" =").frame(width: 80, height: 80, alignment: .center)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .font(.title)
                })
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom).padding(.bottom,15)
    }
}

extension Double {
    func removeZerosFromEnd() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 16 //maximum digits in Double after dot (maximum precision)
        return String(formatter.string(from: number) ?? "")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
