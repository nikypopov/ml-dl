%% Random Star Example Generator
clear;clc;

N_samples = 100;
rng('default');

%% O-Type Stars

T_low_O = 33e3;
T_high_O = 40000;
L_low_O = 112000;
L_high_O = 834042;
Rad_low_O = 6.237;
Rad_high_O = 1948.5;
Mag_low_O = -10.84;
Mag_high_O = -4.36;

T_O_range = (T_high_O-T_low_O)/2;
L_O_range = (L_high_O-L_low_O)/2;
Rad_O_range = (Rad_high_O-Rad_low_O)/2;
Mag_O_ranfge = (Mag_high_O-Mag_low_O)/2;

O_Possible_Colors = ["Blue"];
O_Possible_Star_Types = [3,4,5];

O_Stars{1}(:,1) = T_low_O + rand(N_samples,1)*(T_high_O-T_low_O);
O_Stars{1}(:,2) = L_low_O + rand(N_samples,1)*(L_high_O-L_low_O);
O_Stars{1}(:,3) = Rad_low_O + rand(N_samples,1)*(Rad_high_O-Rad_low_O);
O_Stars{1}(:,4) = Mag_low_O + rand(N_samples,1)*(Mag_high_O-Mag_low_O);

for i = 1:N_samples
    O_Stars{1}(i,5) = randsample(O_Possible_Star_Types,1);
    O_Stars{2}(i,1) = O_Possible_Colors(randi(numel(O_Possible_Colors)));
end

%% B-Type Stars

T_low_B = 9700;
T_high_B = 33750;
L_low_B = 0.00059;
L_high_B = 849420;
Rad_low_B = 0.0084;
Rad_high_B = 1779;
Mag_low_B = -9.9;
Mag_high_B = 13.67;

T_B_range = (T_high_B-T_low_B)/2;
L_B_range = (L_high_B-L_low_B)/2;
Rad_B_range = (Rad_high_B-Rad_low_B)/2;
Mag_B_range = (Mag_high_B-Mag_low_B)/2;

B_Possible_Colors = ["White","Blue White","Whitish","Blue"];
B_Possible_Star_Types = [2,3,4,5];

B_Stars{1}(:,1) = T_low_B + rand(N_samples,1)*(T_high_B-T_low_B);
B_Stars{1}(:,2) = L_low_B + rand(N_samples,1)*(L_high_B-L_low_B);
B_Stars{1}(:,3) = Rad_low_B + rand(N_samples,1)*(Rad_high_B-Rad_low_B);
B_Stars{1}(:,4) = Mag_low_B + rand(N_samples,1)*(Mag_high_B-Mag_low_B);

for i = 1:N_samples
    B_Stars{1}(i,5) = randsample(B_Possible_Star_Types,1);
    B_Stars{2}(i,1) = B_Possible_Colors(randi(numel(B_Possible_Colors)));
end

%% A-Type Stars

T_low_A = 7723;
T_high_A = 14060;
L_low_A = 0.00014;
L_high_A = 537493;
Rad_low_A = 0.00878;
Rad_high_A = 1423;
Mag_low_A = -11.23;
Mag_high_A = 14.87;

T_A_range = (T_high_A-T_low_A)/2;
L_A_range = (L_high_A-L_low_A)/2;
Rad_A_range = (Rad_high_A-Rad_low_A)/2;
Mag_A_range = (Mag_high_A-Mag_low_A)/2;

A_Possible_Colors = ["White","Blue White","Whitish"];
A_Possible_Star_Types = [2,3,5];

A_Stars{1}(:,1) = T_low_A + rand(N_samples,1)*(T_high_A-T_low_A);
A_Stars{1}(:,2) = L_low_A + rand(N_samples,1)*(L_high_A-L_low_A);
A_Stars{1}(:,3) = Rad_low_A + rand(N_samples,1)*(Rad_high_A-Rad_low_A);
A_Stars{1}(:,4) = Mag_low_A + rand(N_samples,1)*(Mag_high_A-Mag_low_A);

for i = 1:N_samples
    A_Stars{1}(i,5) = randsample(A_Possible_Star_Types,1);
    A_Stars{2}(i,1) = A_Possible_Colors(randi(numel(A_Possible_Colors)));
end

%% F-Type Stars

T_low_F = 5300;
T_high_F = 14732;
L_low_F = 0.00008;
L_high_F = 9.25;
Rad_low_F = 0.00892;
Rad_high_F = 1.93;
Mag_low_F = -0.98;
Mag_high_F = 14.47;

T_F_range = (T_high_F-T_low_F)/2;
L_F_range = (L_high_F-L_low_F)/2;
Rad_F_range = (Rad_high_F-Rad_low_F)/2;
Mag_F_range = (Mag_high_F-Mag_low_F)/2;

F_Possible_Colors = ["White","Yellowish White","Pale Yellow Orange","Yellow-White",];
F_Possible_Star_Types = [2,3];

F_Stars{1}(:,1) = T_low_F + rand(N_samples,1)*(T_high_F-T_low_F);
F_Stars{1}(:,2) = L_low_F + rand(N_samples,1)*(L_high_F-L_low_F);
F_Stars{1}(:,3) = Rad_low_F + rand(N_samples,1)*(Rad_high_F-Rad_low_F);
F_Stars{1}(:,4) = Mag_low_F + rand(N_samples,1)*(Mag_high_F-Mag_low_F);

for i = 1:N_samples
    F_Stars{1}(i,5) = randsample(F_Possible_Star_Types,1);
    F_Stars{2}(i,1) = F_Possible_Colors(randi(numel(F_Possible_Colors)));
end

%% K-Type Stars

T_low_K = 4015;
T_high_K = 5112;
L_low_K = 0.085;
L_high_K = 630000;
Rad_low_K = 0.795;
Rad_high_K = 1534;
Mag_low_K = -11.39;
Mag_high_K = 6.506;

T_K_range = (T_high_K-T_low_K)/2;
L_K_range = (L_high_K-L_low_K)/2;
Rad_K_range = (Rad_high_K-Rad_low_K)/2;
Mag_K_range = (Mag_high_K-Mag_low_K)/2;

K_Possible_Colors = ["Yellowish","Orange-Red","Red","Orange"];
K_Possible_Star_Types = [3,5];

K_Stars{1}(:,1) = T_low_K + rand(300,1)*(T_high_K-T_low_K);
K_Stars{1}(:,2) = L_low_K + rand(300,1)*(L_high_K-L_low_K);
K_Stars{1}(:,3) = Rad_low_K + rand(300,1)*(Rad_high_K-Rad_low_K);
K_Stars{1}(:,4) = Mag_low_K + rand(300,1)*(Mag_high_K-Mag_low_K);

for i = 1:300
    K_Stars{1}(i,5) = randsample(K_Possible_Star_Types,1);
    K_Stars{2}(i,1) = K_Possible_Colors(randi(numel(K_Possible_Colors)));
end

%% M-Type Stars

T_low_M = 1939;
T_high_M = 3834;
L_low_M = 0.000138;
L_high_M = 550000;
Rad_low_M = 0.057;
Rad_high_M = 1673;
Mag_low_M = -11.92;
Mag_high_M = 20.06;

T_M_range = (T_high_M-T_low_M)/2;
L_M_range = (L_high_M-L_low_M)/2;
Rad_M_range = (Rad_high_M-Rad_low_M)/2;
Mag_M_range = (Mag_high_M-Mag_low_M)/2;

M_Possible_Colors = ["Red","Orange"];
M_Possible_Star_Types = [0,1,4,5];

M_Stars{1}(:,1) = T_low_M + rand(N_samples,1)*(T_high_M-T_low_M);
M_Stars{1}(:,2) = L_low_M + rand(N_samples,1)*(L_high_M-L_low_M);
M_Stars{1}(:,3) = Rad_low_M + rand(N_samples,1)*(Rad_high_M-Rad_low_M);
M_Stars{1}(:,4) = Mag_low_M + rand(N_samples,1)*(Mag_high_M-Mag_low_M);

for i = 1:N_samples
    M_Stars{1}(i,5) = randsample(M_Possible_Star_Types,1);
    M_Stars{2}(i,1) = M_Possible_Colors(randi(numel(M_Possible_Colors)));
end