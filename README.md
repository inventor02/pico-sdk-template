# Pi Pico SDK Project Template

**Your project goes here!** This is a template for projects that use the Raspberry Pi Pico C SDK.

It contains the following:

- SDK included as a Git submodule
- CMakeLists.txt set up for a Pico executable
- VSCode configurations for C/C++ and the OpenOCD Cortex Debugger
- .gitignore files
- This file!

You should:

- Replace `LICENSE` with a license applicable to your project (or at the very least, change the name - I do not want your copyright)
- Either initialise the SDK submodules:
    - Initialise the submodule for the SDK (`git submodule init`) and then update it (`git submodule update`)
    - Initialise and update any submodules you require in the SDK itself (like TinyUSB, or the CYW43 stack for the Pico W)
- Or, ensure `PICO_SDK_PATH` is set in your environment to use that copy of the SDK instead.
- Replace this file
- Profit!
