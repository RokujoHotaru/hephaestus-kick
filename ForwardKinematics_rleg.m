% Fig. 2.23 Calculate forward kinematics for all joints
function ForwardKinematics(j)
global rleg
if j == 0 
    return; 
end
% if j == 1
%     rleg(j).c = rleg(j).p;
% end
if j ~= 1 && (j < 17)
    i = rleg(j).mother;
    rleg(j).p = rleg(i).R * rleg(j).b + rleg(i).p;
    rleg(j).R = rleg(i).R * Rodrigues(rleg(j).a, rleg(j).q);
end
ForwardKinematics(rleg(j).sister);
ForwardKinematics(rleg(j).child);
