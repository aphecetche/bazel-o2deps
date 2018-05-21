cc_library(
    name = "FairMQ",
    srcs = glob(["fairmq/*.cxx"]) + glob([
        "fairmq/devices/*.h",
    ]) + glob([
        "fairmq/options/*.h",
    ]) + glob([
        "fairmq/plugins/*.h",
    ]) + glob([
        "fairmq/shmem/*.h",
    ]) + glob([
        "fairmq/tools/*.h",
    ]) + glob([
        "fairmq/zeromq/*.h",
    ]),
    hdrs = glob(["fairmq/*.h"]) + glob([
        "fairmq/devices/*.h",
    ]) + glob([
        "fairmq/options/*.h",
    ]) + glob([
        "fairmq/plugins/*.h",
    ]) + glob([
        "fairmq/shmem/*.h",
    ]) + glob([
        "fairmq/tools/*.h",
    ]) + glob([
        "fairmq/zeromq/*.h",
    ]),
    copts = ["-O2 -g -fPIC -std=c++11 -DNDEBUG -Iexternal/fairlogger"],
    includes = ["fairmq","fairmq/tools"
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@boost//:algorithm",
        "@boost//:filesystem",
        "@boost//:program_options",
        "@boost//:regex",
        "@boost//:asio",
        "@boost//:msm",
        "@boost//:process",
        "@boost//:serialization",
        "@boost//:uuid",
        "@boost//:signals2",
        "@boost//:proto",
        "@fairlogger//:libFairLogger",
    ],
)
