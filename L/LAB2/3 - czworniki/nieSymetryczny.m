%SYMETRYCZNY CZWÓRNIK
y11 = 4.27E-04*exp(j*34.7*pi/180);
y12 = 2.57E-04*exp(j*-142.5*pi/180);
y21 = 2.585E-04*exp(j*-142*pi/180);
y22 = 4.57E-04*exp(j*25.5*pi/180);
Y=[y11 y12; y21 y22];
AW = ((-1)/y21)*[y22 1; det(Y) y11];
AW1=abs(AW);
AW12=angle(AW)*180/pi;

a11 = 1.79*exp(j*-11.5*pi/180);
a12 = 3.86E+03*exp(j*-38*pi/180);
a21 = 5.21E-04*exp(j*15.3*pi/180);
a22 = 1.65*exp(j*-3.3*pi/180);
A=[a11 a12; a21 a22];
YW = (1/a12)*[a22 -det(A); -1 a11]
YW1=abs(YW)
YW12=angle(YW)*180/pi

Z = 1975 - 944.6i;
Ku = Z/(a11*Z+a12);
Ki = (-1)/(a21*Z+a22);
Kifi = angle(Ki)*180/pi;
Kufi = angle(Ku)*180/pi;
Kure = abs(Ku)
Kire = abs(Ki)

KuY = (-y21*Z)/(y22*Z+1);
KiY = (y21)/(det(Y)*Z+y11);
KifiY = angle(KiY)*180/pi;
KufiY = angle(KuY)*180/pi;
KureY = abs(KuY)
KireY = abs(KiY)