# Cross-compiling Qt applications

This repository provides a bare-bones example on how to cross-compile a simple Qt Widgets application, using Qt 5.15 available from a distribution's own package repository and Visual Studio Code's development containers extension. The repository is geared to work with both CMake and qmake, and uses GNU's native and cross-compiling C++-compiler to do the job.

The target Linux distribution is Debian Bullseye, and target architecture is aarch64. Using a different distribution (via Dockerfile) or architecture (via Dockerfile & CMake/qmake files) should be possible but it has not been tested.

## Host requirements

In order to successfully build this repository you will need:
- Windows 10 or later
- Visual Studio Code
- Docker Desktop (with WSL2 backend)
- Any distribution (such as Debian or Ubuntu-24.04) installed on the WSL2

After these, you need to change Docker Desktop's Settings -> Resources -> WSL2, and enable integration with your default distribution. You will also need to set your distribution as default in WSL2 by invoking `wsl --set-default <distro>`.

The sample may work with a Linux desktop environment as well but you may need to do some tinkering.
