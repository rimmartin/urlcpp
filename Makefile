all: liburlcpp.so url_test test

url_test:
	$(CXX) -std=c++2a  -Wall -Wnon-virtual-dtor Url.cpp Url_test.cpp Path.cpp -I./cpp_modules/doctest/doctest -o url_test

liburlcpp.so:
	$(CXX) Path.cpp Url.cpp -O3 -shared -std=c++2a -fPIC -o liburlcpp.so

test:
	./url_test


clean:
	rm url_test liburlcpp.so

.PHONY: all clean
