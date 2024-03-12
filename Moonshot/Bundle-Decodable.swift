//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Юрий on 25.02.2024.
//

import Foundation
    //Далее мы хотим преобразовать astronauts.json в словаре Astronaut экземпляров, что означает, что нам нужно использовать Bundle, чтобы найти путь к файлу, загрузить его в экземпляр Data и передать его через JSONDecoder.
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locale \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
}
