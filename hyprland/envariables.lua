--Force most apps to use Wayland instead of XWayland
  hl.env("GDK_BACKEND", "wayland,x11,*")
  hl.env("QT_QPA_PLATFORM", "wayland;xcb")
  hl.env("CLUTTER_BACKEND", "wayland")
  hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
  hl.env("MOZ_ENABLE_WAYLAND", "1")
-- Allows applications to bypass the compositor completely when fullscreened
hl.env("WEBRTC_USE_PIPEWIRE", "1")


--Performance optimizations
  hl.env("GL_THREADED_OPTIMIZATIONS", "1")
  hl.env("__GL_MaxFramesAllowed", "1")
  hl.env("WLR_DRM_NO_ATOMIC", "1")

--Driver & GPU stuff
  hl.env("AMD_VULKAN_ICD", "RADV")
    --FINALLY FIGURED OUT HOW TO ENABLE AV1! WHOOOOOO
      hl.env("LIBVA_DRIVER_NAME", "radeonsi")
-- Forces hardware acceleration for video encoding/decoding inside applications
hl.env("VDPAU_DRIVER", "radeonsi")

--Cursor & theming shenanigans
  hl.env("HYPRCURSOR_THEME", "catppuccin-mocha-mauve-cursors")
  hl.env("XCURSOR_SIZE", "18")
  hl.env("HYPRCURSOR_SIZE", "18")
  hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
  hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
