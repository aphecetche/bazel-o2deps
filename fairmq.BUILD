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
    copts = ["-O2 -g -fPIC -std=c++11 -DNDEBUG -isystem external/fairmq -isystem external/fairmq/fairmq/tools"],
    visibility = ["//visibility:public"],
    includes = ["fairmq"],
    deps = [
        "@boost//:algorithm",
        "@boost//:filesystem",
        "@boost//:program_options",
        "@boost//:regex",
        "@boost//:asio",
        "@boost//:msm",
        "@boost//:process",
        "@boost//:interprocess",
        "@boost//:serialization",
        "@boost//:uuid",
        "@boost//:signals2",
        "@boost//:proto",
        "@boost//:dll",
        "@fairlogger//:FairLogger",
        "@zmq//:zmq"
    ],
)
