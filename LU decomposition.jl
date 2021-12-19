using LinearAlgebra

A = [2 1 7; 5 7 4; 3 9 6]

println("A:")
display(A)
println()
println()

F = lu(A)

println("P:")
display(F.P)
println()
println()

println("L:")
display(F.L)
println()
println()

println("U:")
display(F.U)
println()
println()

println("L * U - P * A:")
display(F.L * F.U - (F.P) * A)