//
//  Created by Oleksii Chernysh on 06.11.17.
//  Copyright © 2017 Oleksii Chernysh. All rights reserved.
//

import Foundation

func lengthEquals(_ length: Int) -> Predicate<String> {
  return Predicate { $0.characters.count == length }
}

func longerThan(_ length: Int) -> Predicate<String> {
  return Predicate { $0.characters.count > length }
}

func shorterThan(_ length: Int) -> Predicate<String> {
  return Predicate { $0.characters.count < length }
}

func containsString(_ otherString: String) -> Predicate<String> {
  return Predicate { $0.contains(otherString) }
}

func hasPrefix(_ prefix: String) -> Predicate<String> {
  return Predicate { $0.hasPrefix(prefix) }
}

func hasSuffix(_ suffix: String) -> Predicate<String> {
  return Predicate { $0.hasSuffix(suffix) }
}

func matchingRegExp(_ pattern: String) -> Predicate<String> {
  let predicate = NSPredicate(format: "SELF MATCHES %@", pattern)
  return Predicate { return predicate.evaluate(with: $0) }
}
