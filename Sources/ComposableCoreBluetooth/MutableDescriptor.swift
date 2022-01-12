import CoreBluetooth
import Foundation

public struct MutableDescriptor {

  public var value: Descriptor.Value

  public init(
    value: Descriptor.Value
  ) {
    self.value = value
  }

  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  var cbMutableDescriptor: CBMutableDescriptor {
    return CBMutableDescriptor(type: value.cbuuid, value: value.associatedValue)
  }
}
