Retrosmart X11 cursors
----------------------

![retrosmart-preview](https://raw.githubusercontent.com/mdomlop/retrosmart-x11-cursors/master/preview.gif "Retrosmart X11 cursor theme preview")

Retrosmart is a X11 cursor theme created for personal use. Inspired by old
Windows 3.x and OS X cursors, Retrosmart brings an old school feel to your
wobbly-windowed desktop of today.

Installation
------------

For a system-wide installation run:

    $ make
    # make install

For a user-only installation run:

    $ make
    # make user_install

Alternatively you can build and install a Arch Linux package:

    $ makepkg -d
    # pacman -U xcursor-retrosmart-*.pkg.tar.gz

Uninstallation
--------------

For uninstall run:

    # make uninstall

or:

    $ make user_uninstall

or:

    # pacman -Rsc xcursor-retrosmart

Dependencies
------------

For a successful compilation you need *imagemagick* for generate PNGs from XPMs
and *xcursorgen* for generate the cursors from the PNGs.
