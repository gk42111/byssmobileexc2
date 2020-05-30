import Foundation
import Glibc

class CheckListElement{
    var poleTekstowe:String
    var czyWykonany:Bool
    var dzienTygodnia:String
    
    init(){
        poleTekstowe = ""
        czyWykonany = false
        dzienTygodnia = ""
    }
    
    init(_ nrDniaTygodnia:Int, _ poleTekstowe:String, _ czyWykonany:Bool){
        self.poleTekstowe = poleTekstowe
        self.czyWykonany = czyWykonany
        let tydzien = ["Poniedziałek", "Wtorek", "Środa", "Czwartek", "Piątek", "Sobota", "Niedziela"]
        self.dzienTygodnia = tydzien[nrDniaTygodnia-1]
    }
}
   

extension CheckListElement: CustomStringConvertible{
    var description: String {
        var tekstCzyWykonany = ""
        if czyWykonany == false {
            tekstCzyWykonany = "Do Wykonania"
        }
        else{
            tekstCzyWykonany = "Gotowe"
        }
        return "\(dzienTygodnia) \(poleTekstowe) -> \(tekstCzyWykonany)"
    }   
}


var o = CheckListElement(7, "Wyjść na spacer", false)
print(o)




