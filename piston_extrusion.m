l = 20;
w = 2;
A = linspace(-pi/2,pi/2,10)';
B = linspace(pi/2,3*pi/2,10)';
csLeft = [l/2 + w/2*cos(A) w/2*sin(A)];
csRight = [-l/2 + w/2*cos(B) w/2*sin(B)];
d = 1.6;
C = linspace(3*pi/2, -pi/2, 10)';
csLeftHole = [-l/2 + d/2*cos(C) d/2*sin(C)];
csRightHole = [l/2 + d/2*cos(C) d/2*sin(C)];
csConnLine = [-l/2 -w/2; +l/2 -w/2];
cs = [csLeft; csRight; csLeftHole; csConnLine; csRightHole];
figure; hold on; axis equal;
plot(cs(:,1), cs(:,2), 'Color', [0.6 0.6 0.6], 'Marker', '.',...
'MarkerSize', 9, 'MarkerEdgeColor', [1 0 0]);



CenterHoleR = 1.5;
followHoleR = 0.8;
Halfstroke = 4.3;
Margin = 1.2;
R = Halfstroke + followHoleR + Margin;
cutB = 3;
cutT = 1.5;
HeightT = 6.5;
emuPoint = 10;

A = [-cutB 0];
an = linspace(pi,2*pi, emuPoint)';
B = [R*cos(an) R*sin(an)];
C = [cutB 0; cutT HeightT; 0 HeightT];
cir = linspace(pi/2, -3*pi/2, emuPoint)';
D = [followHoleR*cos(cir) Halfstroke+followHoleR*sin(cir)];
E = [0 HeightT; -cutT HeightT; -cutB 0];
cir2 = linspace(pi, -pi, 10)';
F = [CenterHoleR*cos(cir2) CenterHoleR*sin(cir2)];
line = [A;B;C;D;E;F];
plot(line(:,1), line(:,2));


height = 4;
thick = 1;
inner_r = 3.3;
contour = [ 0 -height/2; (thick+inner_r) -height/2; (inner_r+thick) height/2; inner_r height/2; inner_r -(height/2-thick); 0 -(height/2-thick)];

othick = 1;
oheight = 10;
oinner_r = 4.3;
outerTube = [oinner_r -oheight/2; (oinner_r + othick) -oheight/2; (oinner_r + othick) oheight/2; oinner_r oheight/2];