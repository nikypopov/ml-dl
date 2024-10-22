%% Random Star Example Generator 2
%% All examples are artificial based on ranges found on Wikipedia
clear;clc;

N_samples = 400;
rng('default');

%% O-Type Stars

T_low_O = 33e3;
T_high_O = 50000;
L_low_O = 30e3;
L_high_O = 1e6;
Rad_low_O = 6.6;
Rad_high_O = 10;
Mag_low_O = -5.8;
Mag_high_O = -4;

O_Possible_Colors = ["Blue"];

O_Stars{1}(:,1) = T_low_O + rand(N_samples,1)*(T_high_O-T_low_O);
O_Stars{1}(:,2) = L_low_O + rand(N_samples,1)*(L_high_O-L_low_O);
O_Stars{1}(:,3) = Rad_low_O + rand(N_samples,1)*(Rad_high_O-Rad_low_O);
O_Stars{1}(:,4) = Mag_low_O + rand(N_samples,1)*(Mag_high_O-Mag_low_O);

for i = 1:N_samples
    O_Stars{2}(i,1) = O_Possible_Colors(randi(numel(O_Possible_Colors)));
end

%% B-Type Stars

T_low_B = 10000;
T_high_B = 33000;
L_low_B = 25;
L_high_B = 30000;
Rad_low_B = 1.8;
Rad_high_B = 6.6;
Mag_low_B = -6.12;
Mag_high_B = 1.25;

B_Possible_Colors = ["White","Blue White","Whitish","Blue"];

B_Stars{1}(:,1) = T_low_B + rand(N_samples,1)*(T_high_B-T_low_B);
B_Stars{1}(:,2) = L_low_B + rand(N_samples,1)*(L_high_B-L_low_B);
B_Stars{1}(:,3) = Rad_low_B + rand(N_samples,1)*(Rad_high_B-Rad_low_B);
B_Stars{1}(:,4) = Mag_low_B + rand(N_samples,1)*(Mag_high_B-Mag_low_B);

for i = 1:N_samples
    B_Stars{2}(i,1) = B_Possible_Colors(randi(numel(B_Possible_Colors)));
end

%% A-Type Stars

T_low_A = 7300;
T_high_A = 10000;
L_low_A = 5;
L_high_A = 25;
Rad_low_A = 1.4;
Rad_high_A = 1.8;
Mag_low_A = 1.25;
Mag_high_A = 2.5;

A_Possible_Colors = ["White","Blue White","Whitish"];

A_Stars{1}(:,1) = T_low_A + rand(N_samples,1)*(T_high_A-T_low_A);
A_Stars{1}(:,2) = L_low_A + rand(N_samples,1)*(L_high_A-L_low_A);
A_Stars{1}(:,3) = Rad_low_A + rand(N_samples,1)*(Rad_high_A-Rad_low_A);
A_Stars{1}(:,4) = Mag_low_A + rand(N_samples,1)*(Mag_high_A-Mag_low_A);

for i = 1:N_samples
    A_Stars{2}(i,1) = A_Possible_Colors(randi(numel(A_Possible_Colors)));
end

%% F-Type Stars

T_low_F = 6000;
T_high_F = 7300;
L_low_F = 1.5;
L_high_F = 5;
Rad_low_F = 1.15;
Rad_high_F = 1.4;
Mag_low_F = 2.5;
Mag_high_F = 4.5;

F_Possible_Colors = ["White","Yellowish White","Pale Yellow Orange","Yellow-White"];

F_Stars{1}(:,1) = T_low_F + rand(N_samples,1)*(T_high_F-T_low_F);
F_Stars{1}(:,2) = L_low_F + rand(N_samples,1)*(L_high_F-L_low_F);
F_Stars{1}(:,3) = Rad_low_F + rand(N_samples,1)*(Rad_high_F-Rad_low_F);
F_Stars{1}(:,4) = Mag_low_F + rand(N_samples,1)*(Mag_high_F-Mag_low_F);

for i = 1:N_samples
    F_Stars{2}(i,1) = F_Possible_Colors(randi(numel(F_Possible_Colors)));
end

%% G-Type Stars

T_low_G = 5300;
T_high_G = 6000;
L_low_G = 0.6;
L_high_G = 1.5;
Rad_low_G = 0.96;
Rad_high_G = 1.15;
Mag_low_G = 4.5;
Mag_high_G = 5.4;

G_Possible_Colors = ["Red","Orange-Red","Pale Yellow Orange"];

G_Stars{1}(:,1) = T_low_G + rand(N_samples,1)*(T_high_G-T_low_G);
G_Stars{1}(:,2) = L_low_G + rand(N_samples,1)*(L_high_G-L_low_G);
G_Stars{1}(:,3) = Rad_low_G + rand(N_samples,1)*(Rad_high_G-Rad_low_G);
G_Stars{1}(:,4) = Mag_low_G + rand(N_samples,1)*(Mag_high_G-Mag_low_G);

for i = 1:N_samples
    G_Stars{2}(i,1) = G_Possible_Colors(randi(numel(G_Possible_Colors)));
end

%% K-Type Stars

T_low_K = 3900;
T_high_K = 5300;
L_low_K = 0.08;
L_high_K = 0.6;
Rad_low_K = 0.7;
Rad_high_K = 0.96;
Mag_low_K = 5.4;
Mag_high_K = 8.3;

K_Possible_Colors = ["Yellowish","Orange-Red","Red","Orange"];

K_Stars{1}(:,1) = T_low_K + rand(N_samples,1)*(T_high_K-T_low_K);
K_Stars{1}(:,2) = L_low_K + rand(N_samples,1)*(L_high_K-L_low_K);
K_Stars{1}(:,3) = Rad_low_K + rand(N_samples,1)*(Rad_high_K-Rad_low_K);
K_Stars{1}(:,4) = Mag_low_K + rand(N_samples,1)*(Mag_high_K-Mag_low_K);

for i = 1:N_samples
    K_Stars{2}(i,1) = K_Possible_Colors(randi(numel(K_Possible_Colors)));
end

%% M-Type Stars

T_low_M = 2300;
T_high_M = 3900;
L_low_M = 0.002;
L_high_M = 0.08;
Rad_low_M = 0.08;
Rad_high_M = 0.7;
Mag_low_M = 8.3;
Mag_high_M = 15;

M_Possible_Colors = ["Red","Orange"];

M_Stars{1}(:,1) = T_low_M + rand(N_samples,1)*(T_high_M-T_low_M);
M_Stars{1}(:,2) = L_low_M + rand(N_samples,1)*(L_high_M-L_low_M);
M_Stars{1}(:,3) = Rad_low_M + rand(N_samples,1)*(Rad_high_M-Rad_low_M);
M_Stars{1}(:,4) = Mag_low_M + rand(N_samples,1)*(Mag_high_M-Mag_low_M);

for i = 1:N_samples
    M_Stars{2}(i,1) = M_Possible_Colors(randi(numel(M_Possible_Colors)));
end
