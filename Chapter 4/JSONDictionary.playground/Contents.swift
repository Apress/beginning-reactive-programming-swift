import Foundation

do {
  if let file = Bundle.main.url(forResource: "DictionaryTest", withExtension: "json") {

  let data = try Data(contentsOf: file)
    
    let jsonObject = try JSONSerialization.jsonObject(with: data, options: []) as! [String:Any]
    
    print (jsonObject["def"])
    
  } else {
    print ("missing file")
  }
} catch {
  fatalError ("handle error properly")
}
