import CoreBluetooth
import Foundation

public struct ATTRequest: Equatable {

  let rawValue: CBATTRequest?
  public let characteristic: Characteristic
  public let value: Data?
  public let offset: Int

  init?(
    from request: CBATTRequest
  ) {
    guard let requestCharacteristic = Characteristic(from: request.characteristic)
    else { return nil }
    self.rawValue = request
    self.characteristic = requestCharacteristic
    self.value = request.value
    self.offset = request.offset
  }

  init(
    characteristic: Characteristic,
    value: Data?,
    offset: Int
  ) {
    self.rawValue = nil
    self.characteristic = characteristic
    self.value = value
    self.offset = offset
  }
}

extension ATTRequest {

  public static func mock(
    characteristic: Characteristic,
    value: Data?,
    offset: Int
  ) -> Self {
    return ATTRequest(
      characteristic: characteristic,
      value: value,
      offset: offset
    )
  }
}
