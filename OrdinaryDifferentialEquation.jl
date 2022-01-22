using DifferentialEquations, Plots

m = 1.0
l = 0.5
g = 9.8
k = 1.0

function f(du, u, p, t)
    du[1] = u[2]
    #du[2] = (-p[2] * p[4] * u[2] - p[1] * p[3] * sin(u[1])) / (p[1] * p[2])
    du[2] = (-l * k * u[2] - m * g * sin(u[1])) / (m * l)
end

u0 = [pi / 2, 0.0]
p = [1.0, 0.5, 9.8, 1.0]
#p = [m, l, g, k]
tspan = (0.0, 10.0)

prob = ODEProblem(f, u0, tspan, p)
sol = solve(prob)

plot(sol)