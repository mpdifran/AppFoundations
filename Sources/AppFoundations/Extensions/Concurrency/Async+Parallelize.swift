//
//  AsyncParallelize.swift
//  AppFoundations
//
//  Created by Mark DiFranco on 2025-03-04.
//

import Foundation

public func asyncParallelize<ChildTaskResult1, ChildTaskResult2>(
  task1: @Sendable @escaping () async -> ChildTaskResult1?,
  task2: @Sendable @escaping () async -> ChildTaskResult2?
) async -> (ChildTaskResult1?, ChildTaskResult2?) where ChildTaskResult1: Sendable, ChildTaskResult2: Sendable {
  await withTaskGroup(of: (ChildTaskResult1?, ChildTaskResult2?).self) { taskGroup in
    taskGroup.addTask {
      let result = await task1()
      return (result, nil)
    }
    taskGroup.addTask {
      let result = await task2()
      return (nil, result)
    }

    var result1: ChildTaskResult1?
    var result2: ChildTaskResult2?

    for await result in taskGroup {
      if let res = result.0 {
        result1 = res
      }
      if let res = result.1 {
        result2 = res
      }
    }

    return (result1, result2)
  }
}

public func asyncThrowingParallelize<ChildTaskResult1, ChildTaskResult2>(
  task1: @Sendable @escaping () async throws -> ChildTaskResult1?,
  task2: @Sendable @escaping () async throws -> ChildTaskResult2?
) async throws -> (ChildTaskResult1?, ChildTaskResult2?) where ChildTaskResult1: Sendable, ChildTaskResult2: Sendable {
  try await withThrowingTaskGroup(of: (ChildTaskResult1?, ChildTaskResult2?).self) { taskGroup in
    taskGroup.addTask {
      let result = try await task1()
      return (result, nil)
    }
    taskGroup.addTask {
      let result = try await task2()
      return (nil, result)
    }

    var result1: ChildTaskResult1?
    var result2: ChildTaskResult2?

    for try await result in taskGroup {
      if let res = result.0 {
        result1 = res
      }
      if let res = result.1 {
        result2 = res
      }
    }

    return (result1, result2)
  }
}
