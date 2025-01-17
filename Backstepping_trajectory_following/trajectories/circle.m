function [desired_state] = circle(t, qn)
% CIRCLE trajectory generator for a circle

% =================== Your code goes here ===================
% You have to set the pos, vel, acc, yaw and yawdot variables
% NOTE: the simulator will spawn the robot to be at the
%       position you return for t == 0
t1 = t;
R = 5;
yaw = 0;
yawdot =0;

%for t1 = 0:0.1:30
    tfunc = (6283/133100)*t1^3 + (-18849/2928200)*t1^4  + (18849/80525500)*t1^5;
    tv = (6283/133100)*3*t1^2 + (-18849/2928200)*4*t1^3 + (18849/80525500)*5*t1^4;
    ta = (6283/133100)*6*t1 + (-18849/2928200)*12*t1^2 + (18849/80525500)*20*t1^3;
    
    if t>11
        pos = [5; 0;2.5];
        vel =  [0;0;0];
        acc =  [0;0;0];
        

    else
        pos = [R*cos(tfunc); R*sin(tfunc); 0.3979*tfunc];
        %disp(pos)
        vel =  [-R*sin(tfunc)*tv; R*cos(tfunc)*tv; 0.3979*tv];
        %vel = [0; 0; 0];
        %disp(t1)
        %disp(vel)
        acc =  [-R*cos(tfunc)*ta; -R*sin(tfunc)*ta; 0.3979*ta];
        %acc = [0; 0; 0];
        %disp(acc)
        yaw = 0;
        yawdot = 0;
        %disp(pos(1))
        %disp(pos(2))
        %disp(pos(3))
        %plot3(acc(1),acc(2),t1,'*');
        %xlabel('ax')
        %ylabel('ay')
        %zlabel('time')
        %hold on
        %drawnow
        %pause(0.1)

    end
    


% =================== Your code ends here ===================

desired_state.pos = pos(:);
desired_state.vel = vel(:);
desired_state.acc = acc(:);
desired_state.yaw = yaw;
desired_state.yawdot = yawdot;

end
