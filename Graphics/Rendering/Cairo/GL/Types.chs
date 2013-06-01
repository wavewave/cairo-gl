-----------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.Cairo.GL.Types
-- Copyright   :  2013 Ian-Woo KIm
-- License     :  BSD3
--
-- Maintainer  :  Ian-Woo Kim
-- Stability   :  experimental
-- Portability :  portable
--
-- Haskell bindings to the cairo-gl types.
-----------------------------------------------------------------------------

-- #hide
module Graphics.Rendering.Cairo.GL.Types where

import Foreign 
import Foreign.C

{#pointer *cairo_device_t as Device foreign newtype #}
withDevice (Device x) = withForeignPtr x 

mkDevice :: Ptr Device -> IO Device
mkDevice devicePtr = do
  deviceForeignPtr <- newForeignPtr_ devicePtr
  return (Device deviceForeignPtr)

