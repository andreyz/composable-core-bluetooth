import CoreBluetooth
import Foundation

public struct MutableService {

  public var type: CBUUID
  public var isPrimary: Bool
  public var characteristics: [MutableCharacteristic]?
  public var includedServices: [MutableService]?

  public init(
    type: CBUUID,
    isPrimary: Bool,
    characteristics: [MutableCharacteristic]?,
    includedServices: [MutableService]?
  ) {
    self.type = type
    self.isPrimary = isPrimary
    self.characteristics = characteristics
    self.includedServices = includedServices
  }

  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  var cbMutableService: CBMutableService {
    let service = CBMutableService(type: type, primary: isPrimary)
    service.characteristics = characteristics?.map(\.cbMutableCharacteristic)
    service.includedServices = includedServices?.map(\.cbMutableService)
    return service
  }
}
