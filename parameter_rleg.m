%designed by Yuan Kaidan, modified by Zhang Rongge
global rleg
parameter_init
%% Body
rleg(9).name   = 'CoM';
rleg(9).sister = 0;
rleg(9).child  = 0;
rleg(9).mother  = 8;
rleg(9).p       = [0 0 pz_com]';
rleg(9).R       = [1 0 0; 0 1 0; 0 0 1];
rleg(9).q       = 0;
rleg(9).a       = [0 0 0]';
rleg(9).b       = [0 0 pz_com]';

rleg(8).name   = 'BODY';
rleg(8).sister = 0;
rleg(8).child  = 9;
rleg(8).mother  = 7;
rleg(8).p       = [0 0 0]';
rleg(8).R       = [1 0 0; 0 1 0; 0 0 1];
rleg(8).q       = 0;
rleg(8).a       = [0 0 0]';
rleg(8).b       = [0 robot_width/2 -0.120]';

%% RLEG_J0
rleg(7).name   = 'RLEG_J0';
rleg(7).sister = 0;
rleg(7).child  = 8;
rleg(7).mother  = 6;
rleg(7).p       = [0 -robot_width/2 0.120]';
rleg(7).R       = [1 0 0; 0 1 0; 0 0 1];
rleg(7).q       = 0;
rleg(7).a       = [0 0 1]';
rleg(7).b       = [0.024 0 0.180]';


%% RLEG_J1
rleg(6).name   = 'RLEG_J1';
rleg(6).sister = 0;
rleg(6).child  = 7;
rleg(6).mother  = 5;
rleg(6).p       = [-0.024 -robot_width/2 -0.060]';
rleg(6).R       = [1 0 0; 0 1 0; 0 0 1];
rleg(6).q       = 0;
rleg(6).a       = [1 0 0]';
rleg(6).b       = [-0.024 -0.004 -0.060]';


%% RLEG_J2
rleg(5).name   = 'RLEG_J2';
rleg(5).sister = 0;
rleg(5).child  = 6;
rleg(5).mother  = 4;
rleg(5).p       = [0 -robot_width/2+0.004 0]';
rleg(5).R       = [1 0 0; 0 1 0; 0 0 1];
rleg(5).q       = 0;
rleg(5).a       = [0 1 0]';
rleg(5).b       = [0 0.004 robot_knee_length]';


%% RLEG_J3
rleg(4).name   = 'RLEG_J3';
rleg(4).sister = 0;
rleg(4).child  = 5;
rleg(4).mother  = 3;
rleg(4).p       = [0 -robot_width/2 -robot_knee_length]';
rleg(4).R       = [1 0 0; 0 1 0; 0 0 1];
rleg(4).q       = 0;
rleg(4).a       = [0 1 0]';
rleg(4).b       = [0 -0.004 robot_shin_length]';


%% RLEG_J4
rleg(3).name   = 'RLEG_J4';
rleg(3).sister = 0;
rleg(3).child  = 4;
rleg(3).mother  = 2;
rleg(3).p       = [0 -robot_width/2+0.004 -robot_knee_length-robot_shin_length]';
rleg(3).R       = [1 0 0; 0 1 0; 0 0 1];
rleg(3).q       = 0;
rleg(3).a       = [0 1 0]';
rleg(3).b       = [0.015 0.004 -0.060]';


%% RLEG_J5
rleg(2).name   = 'RLEG_J5';
rleg(2).sister = 0;
rleg(2).child  = 3;
rleg(2).mother  = 1;
rleg(2).p       = [-0.015 -robot_width/2 -robot_knee_length-robot_shin_length+0.060]';
rleg(2).R       = [1 0 0; 0 1 0; 0 0 1];
rleg(2).q       = 0;
rleg(2).a       = [1 0 0]';
rleg(2).b       = [-0.015 0 0.129]';

%% RLEG_J6
rleg(1).name   = 'RLEG_Foot';
rleg(1).sister = 0;
rleg(1).child  = 2;
rleg(1).mother  = 0;
rleg(1).p       = [0 -robot_width/2 -robot_knee_length-robot_shin_length-0.069]';
rleg(1).R       = [1 0 0; 0 1 0; 0 0 1];
rleg(1).q       = 0;
rleg(1).a       = [0 0 0]';
rleg(1).b       = [0 0 0]';

