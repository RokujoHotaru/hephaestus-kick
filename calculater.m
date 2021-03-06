%% 杆1和杆2
hip1_c=[24.05 0 101.4];%髋的重心 p2坐标系 ok
hip1=0.189;%髋的质量 ok

c23=[-9.55 3.70 -30.2];%2个电机加固定 p3坐标系 ok
cg2_3=[0.01 3.51 -5.65];%杆2重心 p3坐标系 ok

hip2_c_3=(2.209*c23-cg2_3*1.230)/(2.209-1.230);%其他部分重心 p3坐标系 
p3_2=[24 -4 60]; %p3-p2
hip2_c=hip2_c_3+p3_2;%其他部分重心 p2坐标系

hip2=2.209-1.230-(0.8635-0.855);%其他部分质量（电机+齿轮等） 按实际质量算 （此处有近似）
cg1_2=(hip1_c*hip1+hip2_c*hip2)/(hip1+hip2);%杆1重心 p2坐标系
p2_1=[-24 0 -180];%p2-p1
cg1=cg1_2+p2_1;%杆1重心 p1坐标系 ok

cg2=p3_2+cg2_3;%杆2重心 p2坐标系 ok

%% 杆3
cdt=[-1.22 1.93 133.92];%大腿 p4坐标系
a4=[0.26 0.54 0];%电机 p4坐标系
cg3_4=(cdt*0.5426+a4*0.855)/(0.5426+0.855);%杆3重心 p4坐标系 （质量只有855么？？）
p4_3=[0 0 -270];%p4-p3
cg3=cg3_4+p4_3;%杆3重心 p3坐标系

%% 杆4和杆5
cxt=[-0.49 4.37 -121.63];%小腿 p4坐标系
a5=[0.26 0.54 0];%电机 p5坐标系
p5_4=[0 0 -270];%p5-p4
a5_4=a5+p5_4;%电机 p4坐标系
cg4=(cxt*508.5+a5_4*732)/(508.5+732);%杆4重心 p4坐标系 （质量只有732么？？）

c25=[-7.83 2.33 30];%2个电机加固定 p5坐标系
a5=[0.26 0.54 0];%电机 p5坐标系
cg5=(c25*1.957-a5*0.7379)/(1.957-0.7379);%杆5重心 p5坐标系 不准确！！

%% 杆6
cjh=[3 0 27.04];%脚踝 中间圆心坐标系
cjz=[22.03 0.49 4.31];%脚掌 中间圆心坐标系
c6=(cjh*0.1927+cjz*0.1428)/(0.1927+0.1428);%杆6 中间圆心坐标系
p6=[21 0 -129];%中间圆心坐标系-p6 不准确！
cg6=c6+p6;%杆6重心 p6坐标系