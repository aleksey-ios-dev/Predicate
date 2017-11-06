//
//  Created by Oleksii Chernysh on 06.11.17.
//  Copyright © 2017 Oleksii Chernysh. All rights reserved.
//

import Foundation

struct Predicate<T> {
  
  var condition: (T) -> Bool
  
  func check(_ value: T) -> Bool {
    return condition(value)
  }
  
}
