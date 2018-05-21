# Play/learn-ground for a bazel build of AliceO2 dependencies.

Trying to write BUILD files for our dependencies (whether or not that's the best strategy is still to be seen...)

Below are some notes of the process.

## [MS_GSL](https://github.com/Microsoft/GSL)

Mostly trivial as it's a header-only lib

## FairLogger

Ran into some issue with the way the includes are handled. For instance, when building the library itself, the `Logger.h` is at `fairlogger/logger/Logger.h`. But when depending on this library (see e.g. FairMQ below), one is using `#include <fairlogger/Logger.h>`.

To pull this off, I had to play with `strip_include_prefix` and `include_prefix` as well as with `includes`. That latter for the `<>` angled include syntax. Kind of annoying as the `includes` is used by dependents library as well ?

## ZeroMQ

There is one file (`platform.hpp`) which is, in the `CMake` build version ,generated at configure time. For the moment I've just copied to one generated on a Mac to `BUILD.zmq`. Obviously would have to revisit this in case this project is going anywhere.

WIP for tests

## FairMQ

WIP

## BOOST

Based on my [fork](https://github.com/aphecetche/rules_boost.git) (branch `alisw`) of [rules_boost](https://github.com/nelhage/rules_boost). Needed as upstream is missing a few libs we are using. Should contribute those changes to upstream at some point...