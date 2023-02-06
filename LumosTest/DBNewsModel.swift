import Foundation
import RealmSwift

@objcMembers
class DBNewsModel: Object {
    dynamic var id = String()
    dynamic var modelTitle = String()
    dynamic var modelImage = String()
//    dynamic var modelMark: ModelMark
    dynamic var modelDateTime = String()
    dynamic var modelText = String()
    
    override static func primaryKey() -> String? {
      return "id"
    }
    
    convenience init(id: String, modelTitle: String, modelImage: String, modelDateTime: String, modelText: String) {
        self.init()
        self.id = id
        self.modelTitle = modelTitle
        self.modelImage = modelImage
        self.modelDateTime = modelDateTime
        self.modelText = modelText
    }
    
    override init() {
        super.init()
    }
}
