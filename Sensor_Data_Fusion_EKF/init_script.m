% Add additional inputs after the given ones if you want to
% Example:
% your_input = 1;
% ekf_handle1 = @(sensor, vic) ekf1(sensor, vic, your_input);
% ekf_handle2 = @(sensor) ekf2(sensor, your_input);
%
% We will only call ekf_handle in the test function.
% Note that this will only create a function handle, but not run the function

map(1).tag_id =    [0, 12, 24, 36, 48, 60, 72, 84, 96;
                1, 13, 25, 37, 49, 61, 73, 85,  97;
                2, 14, 26, 38, 50, 62, 74, 86,  98;
                3, 15, 27, 39, 51, 63, 75, 87,  99;
                4, 16, 28   , 40, 52, 64, 76, 88, 100;
                5, 17, 29, 41, 53, 65, 77, 89, 101;
                6, 18, 30, 42, 54, 66, 78, 90, 102;
                7, 19, 31, 43, 55, 67, 79, 91, 103;
                8, 20, 32, 44, 56, 68, 80, 92, 104;
                9, 21, 33, 45, 57, 69, 81, 93, 105;
                10, 22, 34, 46, 58, 70, 82, 94, 106;
                11, 23, 35, 47, 59, 71, 83, 95, 107];
            
 
 map(1).p0x = 0.076:0.304:3.42;          
 map(1).p1x = 0.152:0.304:3.496;
 map(1).p2x = 0.152:0.304:3.496;
 map(1).p3x = 0:0.304:3.3440;
 map(1).p4x = 0:0.304:3.3440;
 
 
 
    
 map(1).p0y = [0,0.304,0.608,0.938,1.242,1.546,1.876,2.18,2.484]+0.076;
 map(1).p1y = [0,0.304,0.608,0.938,1.242,1.546,1.876,2.18,2.484];
 map(1).p2y = [0,0.304,0.608,0.938,1.242,1.546,1.876,2.18,2.484]+0.152;
 map(1).p3y = [0,0.304,0.608,0.938,1.242,1.546,1.876,2.18,2.484]+0.152;
 map(1).p4y = [0,0.304,0.608,0.938,1.242,1.546,1.876,2.18,2.484];
 
 disp(size(map.p4x));
 disp(size(map.p4y));
 
 map(1).k_mat = [311.0520 0        201.8724;
              0        311.3885 113.6210;
              0        0        1];
map(1).xyz = [-0.04, 0.0, -0.03];

map(1).yaw = pi/4;

estimate_pose_handle = @(sensor)estimate_pose(sensor,map);
estimate_vel_handle = @(sensor) estimate_vel(sensor,map);
ekf1_handle = @(sensor, vic) ekf1(sensor, vic);
ekf2_handle = @(sensor) ekf2(sensor);
