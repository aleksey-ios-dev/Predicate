//
//  Created by Oleksii Chernysh on 06.11.17.
//  Copyright © 2017 Oleksii Chernysh. All rights reserved.
//

import Foundation

func contains<T>(_ element: T) -> Predicate<[T]> where T: Hashable {
  return Predicate { Set($0).contains(element) }
}

func countEquals<T>(_ count: Int) -> Predicate<[T]> {
  return Predicate { $0.count == count }
}

func countMoreThan<T>(_ count: Int) -> Predicate<[T]> {
  return Predicate { $0.count > count }
}

func countLessThan<T>(_ count: Int) -> Predicate<[T]> {
  return Predicate { $0.count < count }
}
