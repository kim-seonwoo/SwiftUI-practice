//
//  ListViewModel.swift
//  SwiftUI-practice
//
//  Created by Seonwoo Kim on 2/16/24.
//

// CRUD 동작이 들어가 있음.
import Foundation

enum GroupAmount {
    case level1
    case level2
    case level3
}

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    
    let itemsKey: String = "items_list"
    
    init() {
        getItems()
    }
    
    func getItems() {
        guard 
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        
        self.items = savedItems
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.updateComplletion()
        }
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
    
    func countCompleted() -> Int {
        return items.filter { $0.isCompleted }.count
    }
    
    func countGroupAmount() -> GroupAmount {
        let completedCount = items.filter { $0.isCompleted }.count
        switch completedCount {
        case ..<5:
            return .level1
        case 5..<10:
            return .level2
        default:
            return .level3
        }
    }
    
    func nameGroup() -> String {
        switch countGroupAmount() {
        case .level1:
            return "분대"
        case .level2:
            return "소대"
        case .level3:
            return "중대"
        }
    }
    
    func soldierLevel() -> String {
        switch countGroupAmount() {
        case .level1:
            return "level1"
        case .level2:
            return "level2"
        case .level3:
            return "level3"
        }
    }
}
