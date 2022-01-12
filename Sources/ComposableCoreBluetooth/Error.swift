import CoreBluetooth
import Foundation

public enum BluetoothError: Error, Equatable {
  case valueAndErrorAreEmpty
  case coreBluetooth(CBError)
  case unknown(String?)
}
