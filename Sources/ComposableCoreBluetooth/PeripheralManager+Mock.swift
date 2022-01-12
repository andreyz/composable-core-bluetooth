import ComposableArchitecture
import CoreBluetooth
import Foundation

@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension PeripheralManager {

  public static func mock(
    create: @escaping (AnyHashable, DispatchQueue?, InitializationOptions?) -> Effect<
      Action, Never
    > = { _, _, _ in
      _unimplemented("create")
    },
    destroy: @escaping (AnyHashable) -> Effect<Never, Never> = { _ in
      _unimplemented("destroy")
    },
    addService: @escaping (AnyHashable, MutableService) -> Effect<Never, Never> = { _, _ in
      _unimplemented("addService")
    },
    removeService: @escaping (AnyHashable, MutableService) -> Effect<Never, Never> = { _, _ in
      _unimplemented("removeService")
    },
    removeAllServices: @escaping (AnyHashable) -> Effect<Never, Never> = { _ in
      _unimplemented("removeAllServices")
    },
    startAdvertising: @escaping (AnyHashable, AdvertismentData?) -> Effect<Never, Never> = { _, _ in
      _unimplemented("startAdvertising")
    },
    stopAdvertising: @escaping (AnyHashable) -> Effect<Never, Never> = { _ in
      _unimplemented("stopAdvertising")
    },
    updateValue: @escaping (AnyHashable, Data, MutableCharacteristic, [Central]?) -> Effect<
      Bool, Never
    > = { _, _, _, _ in
      _unimplemented("updateValue")
    },
    respondToRequest: @escaping (AnyHashable, ATTRequest, CBATTError.Code) -> Effect<Never, Never> =
      { _, _, _ in
        _unimplemented("respondToRequest")
      },
    setDesiredConnectionLatency: @escaping (
      AnyHashable, CBPeripheralManagerConnectionLatency, Central
    ) -> Effect<Never, Never> = { _, _, _ in
      _unimplemented("setDesiredConnectionLatency")
    },
    publishL2CAPChannel: @escaping (AnyHashable, Bool) -> Effect<Never, Never> = { _, _ in
      _unimplemented("publishL2CAPChannel")
    },
    unpublishL2CAPChannel: @escaping (AnyHashable, CBL2CAPPSM) -> Effect<Never, Never> = { _, _ in
      _unimplemented("unpublishL2CAPChannel")
    }
  ) -> Self {
    Self(
      create: create,
      destroy: destroy,
      addService: addService,
      removeService: removeService,
      removeAllServices: removeAllServices,
      startAdvertising: startAdvertising,
      stopAdvertising: stopAdvertising,
      updateValue: updateValue,
      respondToRequest: respondToRequest,
      setDesiredConnectionLatency: setDesiredConnectionLatency,
      publishL2CAPChannel: publishL2CAPChannel,
      unpublishL2CAPChannel: unpublishL2CAPChannel
    )
  }

  public static func failing(
    create: @escaping (AnyHashable, DispatchQueue?, InitializationOptions?) -> Effect<
      Action, Never
    > = { _, _, _ in
      .failing("create")
    },
    destroy: @escaping (AnyHashable) -> Effect<Never, Never> = { _ in
      .failing("destroy")
    },
    addService: @escaping (AnyHashable, MutableService) -> Effect<Never, Never> = { _, _ in
      .failing("addService")
    },
    removeService: @escaping (AnyHashable, MutableService) -> Effect<Never, Never> = { _, _ in
      .failing("removeService")
    },
    removeAllServices: @escaping (AnyHashable) -> Effect<Never, Never> = { _ in
      .failing("removeAllServices")
    },
    startAdvertising: @escaping (AnyHashable, AdvertismentData?) -> Effect<Never, Never> = { _, _ in
      .failing("startAdvertising")
    },
    stopAdvertising: @escaping (AnyHashable) -> Effect<Never, Never> = { _ in
      .failing("stopAdvertising")
    },
    updateValue: @escaping (AnyHashable, Data, MutableCharacteristic, [Central]?) -> Effect<
      Bool, Never
    > = { _, _, _, _ in
      .failing("updateValue")
    },
    respondToRequest: @escaping (AnyHashable, ATTRequest, CBATTError.Code) -> Effect<Never, Never> =
      { _, _, _ in
        .failing("respondToRequest")
      },
    setDesiredConnectionLatency: @escaping (
      AnyHashable, CBPeripheralManagerConnectionLatency, Central
    ) -> Effect<Never, Never> = { _, _, _ in
      .failing("setDesiredConnectionLatency")
    },
    publishL2CAPChannel: @escaping (AnyHashable, Bool) -> Effect<Never, Never> = { _, _ in
      .failing("publishL2CAPChannel")
    },
    unpublishL2CAPChannel: @escaping (AnyHashable, CBL2CAPPSM) -> Effect<Never, Never> = { _, _ in
      .failing("unpublishL2CAPChannel")
    }
  ) -> Self {
    Self(
      create: create,
      destroy: destroy,
      addService: addService,
      removeService: removeService,
      removeAllServices: removeAllServices,
      startAdvertising: startAdvertising,
      stopAdvertising: stopAdvertising,
      updateValue: updateValue,
      respondToRequest: respondToRequest,
      setDesiredConnectionLatency: setDesiredConnectionLatency,
      publishL2CAPChannel: publishL2CAPChannel,
      unpublishL2CAPChannel: unpublishL2CAPChannel
    )
  }
}
