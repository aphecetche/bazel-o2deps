cc_library(
    name = "FairLogger",
    srcs = ["logger/Logger.cxx","logger/Logger.h"],
    hdrs = ["logger/Logger.h"],
    strip_include_prefix="logger",
    include_prefix="fairlogger",
    includes = ["logger"],
    copts = ["-O2 -g -fPIC -std=c++11 -DNDEBUG"],
    visibility = ["//visibility:public"],
)
