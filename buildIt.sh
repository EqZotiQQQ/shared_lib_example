echo "shared lib usage example"
path=`pwd`
#create obj file
c++ -c -Wall -Werror -fpic string_func.cpp
#build shared lib from obj file
c++ -shared -o libstring_func.so string_func.o
#build the main file with linked lib
c++ -L${path} -Wall -o main main.cpp -lstring_func
LD_LIBRARY_PATH=${path}/string_func:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=${path}:$LD_LIBRARY_PATH
./main

#next u need to include header and u can use functions inside shared lib.
