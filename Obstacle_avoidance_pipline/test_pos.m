

R=5;
for t = 0:0.5:30
    
if t == 0
    pos = [0;0;0];
    vel = [0;0;0];
    acc = [0;0;0];
elseif t < 7.5 && t>0
    tf = t;
    tfunc = ((16/675)*tf^3 + (-16/3375)*tf^4  + (64/253125)*tf^5);
    tv = ((16/675)*3*tf^2 + (-16/3375)*4*tf^3  + (64/253125)*5*tf^4);
    ta = ((16/675)*6*tf + (-16/3375)*12*tf^2  + (64/253125)*20*tf^3);
    pos = [0+((1/4)-0)*tfunc; 0+(1.414-0)*tfunc ; 0+(1.414-0)*tfunc];
    vel = [((1/4)-0)*tv; (1.414-0)*tv ; (1.414-0)*tv];
    acc = [((1/4)-0)*ta; (1.414-0)*ta ; (1.414-0)*ta];
elseif t < 15 && t>=7.5
    tf = t-7.5;
    tfunc = ((16/675)*tf^3 + (-16/3375)*tf^4  + (64/253125)*tf^5);
    tv = ((16/675)*3*tf^2 + (-16/3375)*4*tf^3  + (64/253125)*5*tf^4);
    ta = ((16/675)*6*tf + (-16/3375)*12*tf^2  + (64/253125)*20*tf^3);
    pos = [1/4+((1/2)-(1/4))*tfunc; 1.414+(0-1.414)*tfunc ; 1.414+(2.828-1.414)*tfunc];
    vel = [((1/2)-(1/4))*tv; (0-1.414)*tv ; (2.828-1.414)*tv];
    acc = [((1/2)-(1/4))*ta; (0-1.414)*ta ; (2.828-1.414)*ta];
elseif t < 22.5 && t>=15
     tf = t-15;
     tfunc = ((16/675)*tf^3 + (-16/3375)*tf^4  + (64/253125)*tf^5);
     tv = ((16/675)*3*tf^2 + (-16/3375)*4*tf^3  + (64/253125)*5*tf^4);
     ta = ((16/675)*6*tf + (-16/3375)*12*tf^2  + (64/253125)*20*tf^3);    
     pos = [1/2+((3/4)-(1/2))*tfunc; 0+(-1.414-0)*tfunc ; 2.828+(1.414-2.828)*tfunc];
     vel = [((3/4)-(1/2))*tv; (-1.414-0)*tv ; (1.414-2.828)*tv];
     acc = [((3/4)-(1/2))*ta; (-1.414-0)*ta ; (1.414-2.828)*ta];
else 
     tf = t-22.5;
     tfunc = ((16/675)*tf^3 + (-16/3375)*tf^4  + (64/253125)*tf^5);
     tv = ((16/675)*3*tf^2 + (-16/3375)*4*tf^3  + (64/253125)*5*tf^4);
     ta = ((16/675)*6*tf + (-16/3375)*12*tf^2  + (64/253125)*20*tf^3);
     pos = [3/4+((1)-(3/4))*tfunc; -1.414+(0-(-1.414))*tfunc ; 1.414+(0-1.414)*tfunc];
     vel = [((1)-(3/4))*tv; (0-(-1.414))*tv ; (0-1.414)*tv];
     acc = [((1)-(3/4))*ta; (0-(-1.414))*ta ; (0-1.414)*ta];
end
    %disp(t1)
    %disp(t1)
    %disp(t1)
    plot3(pos(1),pos(2),pos(3),'*')
    hold on
    drawnow
    pause(0.1)
end
