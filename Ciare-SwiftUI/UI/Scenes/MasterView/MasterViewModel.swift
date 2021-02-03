//
//  MasterViewModel.swift
//  Ciare-SwiftUI
//
//  Created by Leonardo Viana on 27/01/21.
//

import Combine
import CoreData

final class MasterViewModel: ObservableObject {
    @Published var hasUserSession: Bool
    private var cancellable: AnyCancellable?
    
    init(userSessionService: UserSessionService) {
        hasUserSession = userSessionService.session != nil
        cancellable = userSessionService.$session
            .map { $0 != nil }
            .removeDuplicates()
            .assign(to: \.hasUserSession, on: self)
    }
    
    func fetchUserInformationWith(id: String, context: NSManagedObjectContext) -> UserInformation? {
        let fetchRequest = NSFetchRequest<UserInformation>(entityName: "UserInformation")
        fetchRequest.predicate = NSPredicate(format: "id == %@", id)
        
        do {
            let result = try context.fetch(fetchRequest)
            if let user = result.first {
                return user
            }
        }catch {
            fatalError("Error: \(error)")
        }
        
        return nil
    }
    
    
}
