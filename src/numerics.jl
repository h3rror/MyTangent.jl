export numderiv  # allows to call function without prefix "MyTangent.jl/"
export tangent

"""
    numderiv(f, x₀, ε=1e-7)

    Returns the appproximate derivative of ``f`` at ``x₀`` using the forward difference with step size ``ε``, namely

    `` f'(x_0) \\approx \\frac{f(x_0 + \\varepsilon) - f(x_0)}{\\varepsilon} ``
"""
function numderiv(f, x₀, ε=1e-7)
    df = f(x₀ + ε) - f(x₀)
    return df / ε
end

""""
    tangent(f,x₀,ε)

    Returns tangent on function ``f`` at ``x₀`` with numerical approximation of the slope based on numderiv
"""
function tangent(f,x₀,ε=1e-7)
    slope = numderiv(f,x₀,ε)
    t(x) = slope*(x-x₀) + f(x₀)
    return t
end