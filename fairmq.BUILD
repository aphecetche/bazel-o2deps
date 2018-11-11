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

cc_binary(
    name="testhelper_runTestDevice",
    srcs=[
    "test/helper/runTestDevice.cxx",
    "test/helper/devices/TestPairLeft.cxx",
    "test/helper/devices/TestPairRight.cxx",
    "test/helper/devices/TestPollIn.cxx",
    "test/helper/devices/TestPollOut.cxx",
    "test/helper/devices/TestPub.cxx",
    "test/helper/devices/TestPull.cxx",
    "test/helper/devices/TestPush.cxx",
    "test/helper/devices/TestRep.cxx",
    "test/helper/devices/TestReq.cxx",
    "test/helper/devices/TestSub.cxx",
    "test/helper/devices/TestTransferTimeout.cxx"],
    includes=[".","test/helper"],
    # copts=["-isystem external/fairmq","-I external/fairmq/test/helper"],
    deps=[":FairMQ"]
)
