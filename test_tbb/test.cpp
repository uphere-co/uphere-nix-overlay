#include<iostream>
#define TBB_PREVIEW_VARIADIC_PARALLEL_INVOKE 1
#include <tbb/parallel_invoke.h>

int main(){
    tbb::parallel_invoke(
        [](){std::cout << "1"<<std::endl;},
        [](){std::cout << "2"<<std::endl;},
        [](){std::cout << "3"<<std::endl;},
        [](){std::cout << "4"<<std::endl;},
        [](){std::cout << "5"<<std::endl;},
        [](){std::cout << "6"<<std::endl;},
        [](){std::cout << "7"<<std::endl;},
        [](){std::cout << "8"<<std::endl;},
        [](){std::cout << "9"<<std::endl;},
        [](){std::cout << "10"<<std::endl;},
        [](){std::cout << "11"<<std::endl;},
        [](){std::cout << "12"<<std::endl;}
        );
    return 0;
}

