export numderiv  # allows to call function without prefix "MyTangent.jl/"

"""
    numderiv(f, x₀, ε=1e-7)

    Returns the appproximate derivative of ``f`` at ``x₀```using the forward difference with step size ``ε``, namely

    `` f'(x_0) \\approx \\frac{f(x_0 + \\varepsilon) - f(x_0)}{\\varepsilon} ``
"""
function numderiv(f, x₀, ε=1e-7)
    df = f(x₀ + ε) - f(x₀)
    return df / ε
end