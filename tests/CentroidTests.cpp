#include <catch.hpp>

#include <vector>
using namespace std;

namespace
{
    #include <Centroid.hpp>

    TEST_CASE("Centroid")
    {
        constexpr size_t n = 8;

        vector<vector<int>> g(n);
        g[0] = { 3 };
        g[1] = { 3 };
        g[2] = { 3 };
        g[3] = { 0, 1, 2, 4 };
        g[4] = { 3, 5 };
        g[5] = { 4, 6, 7 };
        g[6] = { 5 };
        g[7] = { 5 };

        REQUIRE(FindCentroid(g) == 4);
    }
}