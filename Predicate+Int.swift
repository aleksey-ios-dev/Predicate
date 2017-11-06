//
//  Created by Oleksii Chernysh on 06.11.17.
//  Copyright © 2017 Oleksii Chernysh. All rights reserved.
//

import Foundation

func divisible(by divisor: Int) -> Predicate<Int> {
  return Predicate { $0 % divisor == 0 }
}
