all: url_test url.so test

url_test:
	$(CXX) -Wall -Wnon-virtual-dtor Url.cpp Url_test.cpp Path.cpp -I./node_modules/doctest/doctest -o url_test

url.so:
	$(CXX) Path.cpp Url.cpp -shared -fPIC -I./node_modules/doctest/doctest -o liburlcpp.so

test:
	./url_test


clean:
	rm url_test liburlcpp.so

.PHONY: all clean
