all: url_test liburlcpp.so test

url_test:
	$(CXX) -Wall -Wnon-virtual-dtor Url.cpp Url_test.cpp Path.cpp -I./node_modules/doctest/doctest -o url_test

liburlcpp.so:
	$(CXX) Path.cpp Url.cpp -O3 -shared -fPIC -I./node_modules/doctest/doctest -o liburlcpp.so

test:
	./url_test


clean:
	rm url_test liburlcpp.so

.PHONY: all clean
