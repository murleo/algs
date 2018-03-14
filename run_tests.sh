#! /bin/bash
ARGS=-std=c++14
TESTS_PATH=tests/
SRC_PATH=src
CATCH_PATH=libs/catch

TESTS_SRC=("main.cpp" "$@")
TESTS_SRC=${TESTS_SRC[@]/#/$TESTS_PATH}

g++ $ARGS $ARGS_EXT -I$CATCH_PATH -I$SRC_PATH $TESTS_SRC && (./a.out; rm -f a.out)
test_exit_code=$?

for filename in ./*.gcno; do
    #echo $filename;
    gcov $filename &>/dev/null;
done

exit "$test_exit_code"
