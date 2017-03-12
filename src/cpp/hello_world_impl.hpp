#pragma once

#include "hello_world.hpp"

namespace reactnativecpp {

    class HelloWorldImpl : public reactnativecpp::HelloWorld {

    public:

        // Constructor
        HelloWorldImpl();

        // Our method that returns a string
        std::string get_hello_world();

    };

}
