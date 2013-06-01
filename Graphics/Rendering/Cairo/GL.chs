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

module Graphics.Rendering.Cairo.GL where

{#import Graphics.Rendering.Cairo.Types #} (Content, mkSurface, Surface(..), cFromEnum,cIntConv)
{#import Graphics.Rendering.Cairo.GL.Types #}

import Foreign
import Foreign.C

#include <cairo-gl.h>


{#fun cairo_gl_surface_create as glSurfaceCreate { withDevice* `Device', cFromEnum `Content', `Int', `Int' } -> `Surface' mkSurface* #}

