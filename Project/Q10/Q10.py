import numpy
import matplotlib.pyplot as plt


a_f = 10
b_f = 8
h = 0.1
a = 100
b = 80

def fx0(x):
    return 6

def fxb(x):
    return 5*x + 2

def f0y(y):
    return y

def fay(y):
    return 3*y

f = [(b + 1)* [0] for i in range(a + 1 )]

for i in range ( a+1 ):
    f[i][0] = fx0(i*h)
    f[i][b] = fxb(i*h)

for j in range ( b+1):
    f[0][j] = f0y(j*h)
    f[a][j] = fay(j*h)



pos = {}

k = 0
for i in range (1,a):
    for j in range(1,b):
        pos [(i,j)] = k
        pos [k] = (i,j)
        k += 1

A = [k*[0] for i in range(k)]
B = k*[0]

k = 0        
for i in range (1,a):
    for j in range (1,b):
        A[k][pos[(i  ,j  )]] = -4
        for z in [(i+1,j),(i-1,j),(i,j+1),(i,j-1)]:
            if z in pos:
                A[k][pos[z]] = 1
            else :
                B[k] -= f[z[0]][z[1]]
        k += 1
        
A = numpy.array(A)
B = numpy.array(B)

C = numpy.linalg.solve(A,B)
for i in range(k) :
    posi = pos[i]
    f [posi[0]] [posi[1]] = C[i]


X = []
Y = []
Z = []

for i in range(a+1):
    X += [[]]
    Y += [[]]
    Z += [[]]
    for j in range(b+1):
        X [i] += [i*h]
        Y [i] += [j*h]
        Z [i] += [f[i][j]]
X = numpy.array(X)
Y = numpy.array(Y)
Z = numpy.array(Z)


fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
ax.plot_wireframe(X, Y, Z, rstride=1, cstride=1)
plt.show()


