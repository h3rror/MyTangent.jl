using MyTangent
using Test

@testset "MyTangent.jl" begin
    f(x) = 2x + 1
    g(x) = x^3 - x

    @test numderiv(f, 3, 1) == 2
    @test numderiv(g, 2) ≈ 11 atol =0.01
end

@testset "Tangents" begin
    f(x) = 2x + 1
    g(x) = x^2

    @test tangent(f,1)(2) ≈ f(2) atol = 0.01
    @test tangent(g,0)(3) ≈ 0 atol = 0.1
end
