import Foundation

let url = Bundle.main.url(forResource: "ArrayTest", withExtension: "json")

do {
  let data = try Data(contentsOf: url!)

  let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])

  let test = jsonObject as! [Int]
  print ("debugging:", "\(jsonObject)")
  print ("\(test)")
  print (test[2])
  
}
catch {
  fatalError ("handle error properly")
}
