//
//  Created by Oleksii Chernysh on 06.11.17.
//  Copyright © 2017 Oleksii Chernysh. All rights reserved.
//

import Foundation

// Primitive

func &&<T>(left: Predicate<T>, right: Predicate<T>) -> Predicate<T> {
  return Predicate<T> { left.check($0) && right.check($0) }
}

func ||<T>(left: Predicate<T>, right: Predicate<T>) -> Predicate<T> {
  return Predicate<T> { left.check($0) || right.check($0) }
}

func !=<T>(left: Predicate<T>, right: Predicate<T>) -> Predicate<T> {
  return Predicate<T> { left.check($0) != right.check($0) }
}

prefix func !<T>(left: Predicate<T>) -> Predicate<T> {
  return Predicate<T> { !left.check($0) }
}

// Composite

func any<T>(_ predicates: [Predicate<T>]) -> Predicate<T> {
  return predicates.reduce(Predicate { _ in false }, { result, element in
    return result || element
  })
}

func all<T>(_ predicates: [Predicate<T>]) -> Predicate<T> {
  return predicates.reduce(Predicate { _ in true }, { result, element in
    return result && element
  })
}

func none<T>(_ predicates: [Predicate<T>]) -> Predicate<T> {
  return !any(predicates)
}

// Higher order

func any<T, U>(_ rule: @escaping (U) -> Predicate<T>, _ values: [U]) -> Predicate<T> {
  return any(values.map { rule($0) })
}

func all<T, U>(_ rule: (U) -> Predicate<T>, _ values: [U]) -> Predicate<T> {
  return all(values.map { rule($0) })
}

func none<T, U>(_ rule: @escaping (U) -> Predicate<T>, _ values: [U]) -> Predicate<T> {
  return !any(rule, values)
}
