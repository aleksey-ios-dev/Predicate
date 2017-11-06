//
//  Created by Oleksii Chernysh on 06.11.17.
//  Copyright © 2017 Oleksii Chernysh. All rights reserved.
//

import Foundation

extension Predicate {
  
  func toNSPredicate() -> NSPredicate {
    return NSPredicate { value, _ in
      if let value = value as? T { return self.check(value) }
      else { return false }
    }
  }
  
}
