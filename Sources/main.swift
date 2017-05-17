
import  Foundation

func openFile() ->URL?{
    if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        
        return  dir.appendingPathComponent(file)
    }
    return nil
}

let file = "profession.txt" //this is the file. we will write to and read from it



let path = openFile()

let data = try String(contentsOf: path!, encoding: String.Encoding.utf8)

let myStrings = data.components(separatedBy: .newlines)

var json = ""
myStrings.forEach { (line ) in

    let id = line.components(separatedBy: NSCharacterSet.decimalDigits.inverted).joined(separator: "")

    let countryName = line.replacingOccurrences(of: "<option value=\"\(id)\">", with: "").replacingOccurrences(of: "</option>", with: "").replacingOccurrences(of: "\t", with: "").trimmingCharacters(in: .whitespaces)
    
    json += "\"\(countryName)\" : \"\(id)\","

    
}


print(json)

