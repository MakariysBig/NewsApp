import Foundation
import RealmSwift

protocol DBManager {    
    func saveNewsModel(data: DBNewsModel)
    func saveAllNewsModels(data: [DBNewsModel])
    func getAllNewsModels() -> [DBNewsModel]
    func removeNewsModel(id: String)
    
    func deleteAll()
}

class DBManagerImpl: DBManager {
    let realm = try! Realm()
    
    //MARK: - Debt Model
    
    func saveNewsModel(data: DBNewsModel) {
        try! realm.write {
            realm.add(data, update: .modified)
        }
    }
    
    func saveAllNewsModels(data: [DBNewsModel]) {
        try! realm.write {
            realm.add(data, update: .modified)
        }
    }
    
    func getAllNewsModels() -> [DBNewsModel] {
        let models = realm.objects(DBNewsModel.self)
        return Array(models)
    }
    
    func removeNewsModel(id: String) {
        let model = Array(realm.objects(DBNewsModel.self).filter("id == %@", id))
        guard let model = model.first else { return }
        dump(model)
        try! realm.write {
            realm.delete(model)
        }
    }
    
    func deleteAll() {
        let realm = try! Realm()
        try! realm.write {
            realm.deleteAll()
        }
    }
}


