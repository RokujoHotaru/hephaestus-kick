% act1_bent;
% act2_roll;
% act3_liftfoot;
% act4_liftleg;
global uLINK;
tic;
ts=0.01;
t=0;
res=zeros(2,10);
uLINK_dq_init;
%rleg
uLINK(3).dq=-0.5;
uLINK(4).dq=-5;
uLINK(5).dq=3.7;
uLINK(6).dq=1.3;
uLINK(7).dq=0.5;
%lleg
uLINK(11).dq=-1.2;
uLINK(12).dq=1.2;
uLINK(13).dq=0;
for i=1:10
    t=t+ts;
    ForwardVelocity(1);
    for j=2:15
        uLINK(j).q=uLINK(j).q+uLINK(j).dq*ts;
    end
    ForwardKinematics(1);
    offset=uLINK(15).p(1);
    for j=1:24
        uLINK(j).p(1)=uLINK(j).p(1)-offset;
    end
    uLINK_to_res;
    if(mod(i,2)==0)
        figure;
        visualize3d(passPath(uLINK));
%         calZMP;
%         ZMPplot;
    end
end
res5_1=res;
t=0;
res=zeros(2,10);
uLINK_dq_init;
%rleg
uLINK(4).dq=-4;
uLINK(5).dq=-6;
uLINK(6).dq=10;
%lleg
uLINK(9).dq=-0.3;
uLINK(11).dq=-1.2;
uLINK(12).dq=1.2;
uLINK(13).dq=0;
for i=1:10
    t=t+ts;
    ForwardVelocity(1);
    for j=2:15
        uLINK(j).q=uLINK(j).q+uLINK(j).dq*ts;
    end
    ForwardKinematics(1);
    offset=uLINK(15).p(1);
    for j=1:24
        uLINK(j).p(1)=uLINK(j).p(1)-offset;
    end
    uLINK_to_res;
    if(mod(i,2)==0)
        figure;
        visualize3d(passPath(uLINK));
%         calZMP;
%         ZMPplot;
    end
end
res5_2=res;
toc;