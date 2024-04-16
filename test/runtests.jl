using MyTangent
using Test

@testset "MyTangent.jl" begin
    f(x) = 2x + 1
    g(x) = x^3 - x

    @test numderiv(f, 3, 1) == 2
    @test numderiv(g, 2) ≈ 11 atol =0.01
end
