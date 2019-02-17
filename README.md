Retrosmart X11 cursors
----------------------

![retrosmart-preview](https://raw.githubusercontent.com/mdomlop/retrosmart-x11-cursors/master/preview.gif "Retrosmart X11 cursor theme preview")

Retrosmart is a X11 cursor theme created for personal use. Inspired by old
Windows 3.x and OS X cursors, Retrosmart brings an old school feel to your
wobbly-windowed desktop of today.

Installation
------------

For a system-wide installation run:

        $ ./configure
        $ make
        # make install

For a user-only installation run:

        $ ./configure
        $ make
        # make user_install


For uninstall run:

    # make uninstall
or:
    $ make user_uninstall

Alternatively you can build a Arch Linux package and install it:

    $ makepkg
    # pacman -U retrosmart-x11-cursors-*.pkg.tar.gz

Dependencies
------------

For a successful compilation you need *imagemagick* and *xcursorgen*.
