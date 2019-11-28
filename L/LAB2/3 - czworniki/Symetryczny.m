%SYMETRYCZNY CZWÓRNIK
y11 = 3.23E-04*exp(j*36.3*pi/180);
y12 = 1.45E-04*exp(j*-118.5*pi/180);
y21 = 1.45E-04*exp(j*-118.5*pi/180);
y22 = 3.22E-04*exp(j*36.6*pi/180);
Y=[y11 y12; y21 y22];
AW = ((-1)/y21)*[y22 1; det(Y) y11];
AW1=abs(AW);
AW12=angle(AW)*180/pi;

a11 = 2.3*exp(j*-24.6*pi/180);
a12 = 6.89E+03*exp(j*-61.5*pi/180);
a21 = 6.69E-04*exp(j*2.3*pi/180);
a22 = 2.23*exp(j*-25.2*pi/180);
A=[a11 a12; a21 a22];
YW = (1/a12)*[a22 -det(A); -1 a11]
YW1=abs(YW)
YW12=angle(YW)*180/pi

Z = 2168.3 - 823.4i;
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