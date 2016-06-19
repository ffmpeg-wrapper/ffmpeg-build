# FFMPEG Build Helper

## Synopsis

Binary packages are usually provided by third party packagers for many platforms,
but **in some cases they are not an option for several reasons:**

 - **some of the encoders have a license making FFmpeg unredistributable if compiled with support for them, thus
   if you want to use them, you need to compile the FFMPEG from source with your own options and settings**
   means a lot to those who wish to use accepted and widespread standards.﻿
 - the binary packages is outdated or contains critical bugs or is missing required features which are available
   in the later version of the software
 - you need to customize the build, for example to support a particular installation layout, to get platform-specific
   optimizations or to link against particular libraries which are not supported in the binary package
 - you want to customize the software by editing the source code

In all these cases building a package from source looks like the best solution.

## Usage

In order to build FFMPEG from source, you need to have some prerequisites on the machine.

### Prerequisites

 - VirtualBox 5.0.20+
 - Vagrant 1.8.1+

### Build

 - cd into the ffmpeg-build repository
 - run ./build.sh

### Using the builds

After the building process successfully completed, your FFMPEG builds can be found in the repository's build directory
(ffmpeg-build/build)

## Licenses

**FFMPEG Wrapper** & **FFMPEG Build Helper** are licensed under [MIT](license.md) @ Richard King

FFmpeg is a trademark of [Fabrice Bellard](http://www.bellard.org), originator of the FFmpeg project.
FFmpeg codebase is mainly LGPL-licensed with optional components licensed under GPL.
Please refer to the [LICENSE file](https://github.com/FFmpeg/FFmpeg/blob/master/LICENSE.md) for detailed information.

The sources of information regarding FFmpeg, its options, setups, settings, tools, usage and help can be found on the
[official FFmpeg website](https://ffmpeg.org/) and on the [official wiki website](https://trac.ffmpeg.org/wiki).
