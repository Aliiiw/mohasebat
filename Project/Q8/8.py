# Ali Rahimi , Reihaneh AkbariFard , Amirhossein Zamani
# 9932120, 9932107, 9932100

#import numpy
import matplotlib.pyplot as plt

c1 = 50*10**(-6)
c2 = 100*10**(-6)
l1 = 50*10**(-6)
l2 = 10*10**(-6)
es = 20
R1 = 2000
R2 = 5000
R3 = 2000
R4 = 3000
R5 = 2000

c1 = 50
c2 = 100
l1 = 50
l2 = 10
es = 20
R1 = 2
R2 = 5
R3 = 2
R4 = 3
R5 = 2

R = R5 + (1/(1/R3+1/R4))
#R = 3200
esp = (R4/(R3+R4))*es

h = 0.01
v_c1 = 0
v_c1p = 0
v_c2 = 0
v_c2p = 0
i_l1 = 0
i_l1p = 0
i_l2 = 0
i_l2p = 0

V_c1 =  [v_c1]
V_c1p = []
V_c2 =  [v_c2]
V_c2p = []
I_l1 =  [i_l1]
I_l1p = []
I_l2 =  [i_l2]
I_l2p = []


for i in range(700) :

         
    v_c1p = i_l1/c1
    v_c2p = (i_l1 + i_l2)/c2
    i_l1p = (esp - v_c2 - v_c1 - R*i_l2-(R+R1)*i_l1)/l1
    i_l2p = (esp - v_c2 - R*i_l1-(R+R1)*i_l2)/l2

    v_c1 += h*v_c1p
    v_c2 += h*v_c2p
    i_l1 += h*i_l1p
    i_l2 += h*i_l2p

    V_c1 +=  [v_c1]
    V_c1p += [v_c1p]
    V_c2 +=  [v_c2]
    V_c2p += [v_c2p]
    I_l1 +=  [i_l1]
    I_l1p += [i_l1p]
    I_l2 +=  [i_l2]
    I_l2p += [i_l2p]


Xs = range(701)

plt.plot(Xs,V_c1,color ='r' , label = 'V_c1' )
plt.plot(Xs,V_c2,color ='g' , label = 'V_c2' )
plt.plot(Xs,I_l1,color ='b' , label = 'I_l1' )
plt.plot(Xs,I_l2,color ='y' , label = 'I_l2' )

plt.legend()
plt.show()