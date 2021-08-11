module Andromeda.Assets.Vendors.AAA.HardwareService where

import Andromeda.Hardware
import qualified Andromeda.Hardware.Impl.Device as D
import Andromeda.Assets.Vendors.AAA.ComponentsAPI (aaaVendorComponents)

aaaHardwareService :: HardwareService
aaaHardwareService = HardwareService
  { makeDevice     = D.makeDevice aaaVendorComponents
  , getBlankDevice = pure D.blankDevice
  , getDevicePart  = \idx device -> pure (D.getDevicePart idx device)
  }