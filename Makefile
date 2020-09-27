all: url_test liburlcpp.so test

url_test:
	$(CXX) -std=c++2a  -Wall -Wnon-virtual-dtor Url.cpp Url_test.cpp Path.cpp -I./node_modules/doctest/doctest -o url_test

liburlcpp.so:
	$(CXX) Path.cpp Url.cpp -O3 -shared -std=c++2a -fPIC -I./node_modules/doctest/doctest -o liburlcpp.so

test:
	./url_test


clean:
	rm url_test liburlcpp.so

.PHONY: all clean
