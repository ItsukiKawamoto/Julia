using DifferentialEquations, Plots

m = 1.0
l = 0.5
g = 9.8
k = 1.0

function f(du, u, p, t)
    du[1] = u[2]
    du[2] = (-p[2] * p[4] * u[2] - p[1] * p[3] * sin(u[1])) / (p[1] * p[2])
end

u0 = [pi / 2, 0.0]
tspan = (0.0, 10.0)
p = [m, l, g, k]

prob = ODEProblem(f, u0, tspan, p)
sol = solve(prob)

plot(sol)