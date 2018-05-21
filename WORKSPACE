
local_repository(
    name = "com_github_nelhage_rules_boost",
    path = "/Users/laurent/github.com/nelhage/rules_boost",
)

load("@com_github_nelhage_rules_boost//:boost/boost.bzl", "boost_deps")

boost_deps()

new_http_archive(
    name = "ms_gsl",
    build_file = "ms_gsl.BUILD",
    sha256 = "9694b04cd78e5b1a769868f19fdd9eea2002de3d4c3a81a1b769209364543c36",
    strip_prefix = "GSL-1.0.0",
    urls = ["https://github.com/Microsoft/GSL/archive/v1.0.0.tar.gz"],
)

new_http_archive(
    name = "fairlogger",
    build_file = "fairlogger.BUILD",
    sha256 = "8fb3ee495845aca631359d24e9a8d8b27acdfb52de6abead730dddc776eafe36",
    strip_prefix = "FairLogger-1.2.0",
    urls = ["https://github.com/FairRootGroup/FairLogger/archive/v1.2.0.tar.gz"],
)

new_http_archive(
    name = "fairmq",
    build_file= "fairmq.BUILD",
    sha256 = "8660b820f91177e8a7e94568eaafad00972072087e39d0bb1d6a403bece041a0",
    strip_prefix = "FairMQ-1.2.1",
    urls = ["https://github.com/FairRootGroup/FairMQ/archive/v1.2.1.tar.gz"],
)

new_http_archive(
    name = "zmq",
    build_file="zmq.BUILD",
    sha256="cc9090ba35713d59bb2f7d7965f877036c49c5558ea0c290b0dcc6f2a17e489f",
    strip_prefix="zeromq-4.2.5",
    urls=["https://github.com/zeromq/libzmq/releases/download/v4.2.5/zeromq-4.2.5.tar.gz"],
)
