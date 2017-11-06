//
//  Created by Oleksii Chernysh on 06.11.17.
//  Copyright © 2017 Oleksii Chernysh. All rights reserved.
//

import Foundation

func before(_ date: Date) -> Predicate<Date> {
  return Predicate { $0.compare(date) == .orderedAscending }
}

func after(_ date: Date) -> Predicate<Date> {
  return Predicate { $0.compare(date) == .orderedDescending }
}

func inTheFuture() -> Predicate<Date> {
  return Predicate { $0.compare(Date()) == .orderedDescending }
}

func inThePast() -> Predicate<Date> {
  return Predicate { $0.compare(Date()) == .orderedAscending }
}
