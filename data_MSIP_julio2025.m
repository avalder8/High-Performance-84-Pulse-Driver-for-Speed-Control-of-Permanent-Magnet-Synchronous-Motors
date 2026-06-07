% Datos del motor sIncrono
% Datos del programa Dr.FBC
% Potencia del Motor - 10HP
% V
% rpm
% TL = Nm
% Inom =  Amp

clear all
close all
clc

Rs_MS = 6.51e-1;
Ld_MS = 22.1e-3;
Lq_MS = 91.1e-3;
lambda_MS = 67.09e-2;
J_MS  = 1e-1;
b_MS  = 1e-3;
np_MS = 2;
%p_MS  = np_MS;

%% controller
Pw = 20;
beta0_wMS = Pw^2;
beta1_wMS = 2*Pw;

pd_MS     = 2*Pw;
beta_d_MS = pd_MS; % mayor que -Rs_MS


alpha1_wMS = (Rs_MS/Lq_MS) + (b_MS/J_MS);
alpha0_wMS = (b_MS*Rs_MS/(J_MS*Lq_MS)) + ...
             (3*np_MS*np_MS*lambda_MS*lambda_MS/...
             (2*J_MS*Lq_MS));

gamq      =  2*J_MS*Lq_MS/(3*np_MS*lambda_MS);

