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

{#import Graphics.Rendering.Cairo.Types #} (Content, mkSurface, withSurface, Surface(..), cFromEnum,cIntConv, cFromBool)
{#import Graphics.Rendering.Cairo.GL.Types #}
{#import Graphics.Rendering.EGL.Raw.Types #} (EGLSurface, withEGLSurface, EGLContext, withEGLContext, EGLDisplay, withEGLDisplay ) 

import Foreign
import Foreign.C

#include <cairo-gl.h>

{#fun cairo_gl_surface_create as glSurfaceCreate { withDevice* `Device', cFromEnum `Content', `Int', `Int' } -> `Surface' mkSurface* #}

{#fun cairo_gl_surface_create_for_texture as glSurfaceCreateForTexture { withDevice* `Device', cFromEnum `Content', `Int', `Int', `Int'} -> `Surface' mkSurface* #}

{#fun cairo_gl_surface_set_size as glSurfaceSetSize { withSurface* `Surface', `Int', `Int' } -> `()' #} 

{#fun cairo_gl_surface_get_width as glSurfaceGetWidth { withSurface* `Surface' } -> `Int' #}

{#fun cairo_gl_surface_get_height as glSurfaceGetHeight { withSurface* `Surface' } -> `Int' #}

{#fun cairo_gl_surface_swapbuffers as glSurfaceSwapbuffers {withSurface* `Surface' } -> `()' #}

{#fun cairo_gl_device_set_thread_aware as glDeviceSetThreadAware {withDevice* `Device', `Bool' } -> `()' #}

{#fun cairo_egl_device_create as eglDeviceCreate {withEGLDisplay* `EGLDisplay', withEGLContext* `EGLContext'} -> `Device' mkDevice* #} 

{#fun cairo_gl_surface_create_for_egl as glSurfaceCreateForEgl {withDevice* `Device', withEGLSurface* `EGLSurface', `Int', `Int'} -> `Surface' mkSurface* #}



