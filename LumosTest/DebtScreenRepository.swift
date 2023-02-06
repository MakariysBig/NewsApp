import Foundation

protocol NewsRepositoryProtocol {
    func saveNews(model: DBNewsModel)
    func getAllNews() -> [DBNewsModel]
    func deleteFromDB(id: String)
}

class NewsRepository: NewsRepositoryProtocol {
    
    private let dbManager: DBManager
    
    init(dbManager: DBManager = DBManagerImpl()) {
        self.dbManager = dbManager
    }
    
    func saveNews(model: DBNewsModel) {
        dbManager.saveNewsModel(data: model)
    }
    
    func getAllNews() -> [DBNewsModel] {
        dbManager.getAllNewsModels()
    }
    
    func deleteFromDB(id: String) {
        dbManager.removeNewsModel(id: id)
    }
}
