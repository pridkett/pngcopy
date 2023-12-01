pngcopy
=======

Patrick Wagstrom &lt;160672+pridkett@users.noreply.github.com&gt;

December 2023

This is the missing companion to `pngpaste` on MacOS. Basically, now you can
`cat` an image into `pngcopy` and it will copy it onto the clipboard/pasteboard
in MacOS. Nice for command lines when you don't want to create extra files.

Usage
-----

```
cat yourfile.png | pngcopy

pngcopy < yourfile.png

pngcopy - < yourfile.png

pngcopy yourfile.png
```

Compilation
-----------

```bash
swiftc -o pngcopy pngcopy.swift
```

License
-------

Copyright (c) 2023 Patrick Wagstrom

Licensed under terms of the MIT License

