def zmq_test(name,extrasrcs=[],extradeps=[]):
  name=name
  native.cc_test(
	name=name,
	srcs=[":testcommonsources"]+["tests/" + name + ".cpp"]+["tests/testutil.hpp"] + extrasrcs,
	copts=["-DZMQ_CUSTOM_PLATFORM_HPP"],
	deps=["@zmq//:zmq"]+extradeps,
	size="small",
	linkstatic=True,
	includes=["include"]
  )

def zmq_test_unity(name):
  zmq_test(name,["tests/testutil_unity.hpp"],[":unity"])
