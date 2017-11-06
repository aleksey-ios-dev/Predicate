//
//  Created by Oleksii Chernysh on 06.11.17.
//  Copyright © 2017 Oleksii Chernysh. All rights reserved.
//

import Foundation

func greaterThan<T: Comparable>(_ value: T) -> Predicate<T> {
  return Predicate { $0 > value }
}

func smallerThan<T: Comparable>(_ value: T) -> Predicate<T> {
  return Predicate { $0 < value }
}

func equal<T: Equatable>(to value: T) -> Predicate<T> {
  return Predicate { $0 == value }
}
