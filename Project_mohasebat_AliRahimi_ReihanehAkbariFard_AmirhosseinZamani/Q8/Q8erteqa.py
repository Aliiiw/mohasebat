# Ali Rahimi , Reihaneh AkbariFard , Amirhossein Zamani
# 9932120, 9932107, 9932100

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

# c1 = 50
# c2 = 100
# l1 = 50
# l2 = 10
# es = 20
# R1 = 2
# R2 = 5
# R3 = 2
# R4 = 3
# R5 = 2

R = R5 + (1/(1/R3+1/R4))
esp = (R4/(R3+R4))*es

h = 0.01
v_c1 = 0
v_c2 = 0
i_l1 = 0
i_l2 = 0

V_c1 =  [v_c1]
V_c2 =  [v_c2]
I_l1 =  [i_l1]
I_l2 =  [i_l2]


for i in range(700) :

         
    v_c1p_k1 = h* (i_l1/c1)
    v_c2p_k1 = h* ((i_l1 + i_l2)/c2)
    i_l1p_k1 = h* ((esp - v_c2 - v_c1 - R*i_l2-(R+R1)*i_l1)/l1)
    i_l2p_k1 = h* ((esp - v_c2 - R*i_l1-(R+R2)*i_l2)/l2)

    v_c1_k1 = v_c1 + v_c1p_k1
    v_c2_k1 = v_c2 + v_c2p_k1
    i_l1_k1 = i_l1 + i_l1p_k1
    i_l2_k1 = i_l2 + i_l2p_k1
    
    v_c1p_k2 = h* (i_l1_k1/c1 )
    v_c2p_k2 = h* ((i_l1_k1 + i_l2_k1)/c2)
    i_l1p_k2 = h* ((esp - v_c2_k1 - v_c1_k1 - R*i_l2_k1-(R+R1)*i_l1_k1)/l1)
    i_l2p_k2 = h* ((esp - v_c2_k1 - R*i_l1_k1-(R+R2)*i_l2_k1)/l2)
    
    v_c1 = v_c1 + (1/2)*(v_c1p_k2 + v_c1p_k1)
    v_c2 = v_c2 + (1/2)*(v_c2p_k2 + v_c2p_k1)
    i_l1 = i_l1 + (1/2)*(i_l1p_k2 + i_l1p_k1)
    i_l2 = i_l2 + (1/2)*(i_l2p_k2 + i_l2p_k1)
    
    V_c1 +=  [v_c1]
    V_c2 +=  [v_c2]
    I_l1 +=  [i_l1]
    I_l2 +=  [i_l2]


Xs = range(701)

plt.plot(Xs,V_c1,color ='r' , label = 'V_c1' )
plt.plot(Xs,V_c2,color ='g' , label = 'V_c2' )
plt.plot(Xs,I_l1,color ='b' , label = 'I_l1' )
plt.plot(Xs,I_l2,color ='y' , label = 'I_l2' )

plt.legend()
plt.show()