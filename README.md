# savescreen

SaveScreen for [polpo](https://github.com/polpo-system/polpo): a small screen saver for the desktop.
After some idle minutes it runs the current fader; the faders are packages of their own:
savescreen-decay, savescreen-life, savescreen-particles, savescreen-sisyphus, savescreen-tiles,
and with the gadgets gadgets-savepoints and gadgets-saveswarm.

```
portia.Install savescreen
```

## Using

    SaveScreen.Activate 10 ~     the saver starts after 10 idle minutes (30 if none is given)
    SaveScreen.Deactivate        not any more
    SaveScreen.Run               the current fader now
    SaveScreen.InstallDefault    the default fader: a black screen
    SaveTiles.Install ~          (with savescreen-tiles) a fader becomes the current one

`share/SaveScreen.Text` is the documentation, also on writing a fader of your own.

## What is here

    src/SaveScreen.Mod       the saver
    share/SaveScreen.Text
    tools/SaveScreen.Tool
    test/SaveScreenTest.Mod

SaveScreen is by Ben Smith-Mannschott. The source comes from ETH Linux Oberon (OLR, 2017-06-18), converted from an Oberon text to plain
text; the first commit has it unchanged. It compiles unchanged with all five of polpo's compilers
(x86, ARM, ARMv7, RISC-V, MIPS).

## Tests

    SaveScreenTest.Run      1 check: the module loaded; it needs the desktop's display

The license is GPL-3 (`LICENSE`); the code comes from ETH Oberon, whose license (`LICENSE.ETH`)
asks to keep its copyright notice and conditions, which `LICENSE.ETH` does.
