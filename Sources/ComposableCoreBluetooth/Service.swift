import CoreBluetooth
import Foundation

public struct Service {

  let rawValue: CBService?
  public let identifier: CBUUID
  public let isPrimary: Bool
  public var characteristics: () -> [Characteristic]
  public var includedServices: [Service]

  init(
    from service: CBService
  ) {
    rawValue = service
    identifier = service.uuid
    isPrimary = service.isPrimary
    characteristics = { service.characteristics?.compactMap(Characteristic.init) ?? [] }
    includedServices = service.includedServices?.map(Service.init) ?? []
  }

  init(
    identifier: CBUUID,
    isPrimary: Bool,
    characteristics: @escaping () -> [Characteristic],
    includedServices: [Service]
  ) {
    rawValue = nil
    self.identifier = identifier
    self.isPrimary = isPrimary
    self.characteristics = characteristics
    self.includedServices = includedServices
  }
}

extension Service {

  public enum Action: Equatable {
    case didDiscoverIncludedServices(Result<[Service], BluetoothError>)
    case didDiscoverCharacteristics(Result<[Characteristic], BluetoothError>)
  }
}

extension Service {
  public static func mock(
    identifier: CBUUID,
    isPrimary: Bool,
    characteristics: @escaping () -> [Characteristic],
    includedServices: [Service]
  ) -> Self {
    Self(
      identifier: identifier,
      isPrimary: isPrimary,
      characteristics: characteristics,
      includedServices: includedServices
    )
  }
}

extension Service: Identifiable {
  public var id: CBUUID {
    return identifier
  }
}

extension Service: Equatable {
  public static func == (lhs: Service, rhs: Service) -> Bool {
    lhs.rawValue == rhs.rawValue && lhs.identifier == rhs.id && lhs.isPrimary == rhs.isPrimary
      && lhs.characteristics() == rhs.characteristics()
      && lhs.includedServices == rhs.includedServices
  }
}
