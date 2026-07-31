%% DC Motor Control Simulation
clear;
clc;
close all;

%% Model
model = 'DC_motor_control_simulink';

%% Load model
load_system(model);

%% Motor Parameters
J  = 0.01;
B  = 0.1;
Kt = 0.01;
Ke = 0.01;
R  = 1;
L  = 0.5;

%% PID Gains
Kp = 5;
Ki = 3;
Kd = 0;

%% Simulation Time
StopTime = 40;
set_param(model,'StopTime',num2str(StopTime));

%% Run simulation
out = sim(model);

%% Extract data

tSpeed = out.motorSpeed.time;
speed = out.motorSpeed.signals.values;

tRef = out.referenceSpeed.time;
ref = out.referenceSpeed.signals.values;

tVoltage = out.controlVoltage.time;
voltage = out.controlVoltage.signals.values;

%% Plot Reference and Motor Speed

figure;

plot(tRef,ref,'y--','LineWidth',2);
hold on;
plot(tSpeed,speed,'b','LineWidth',2);

grid on;
xlabel('Time (s)');
ylabel('Speed (rad/s)');
title('Motor Speed Tracking');
legend('Reference','Motor Speed','Location','best');

%% Plot Control Voltage

figure;

plot(tVoltage,voltage,'r','LineWidth',2);

grid on;
xlabel('Time (s)');
ylabel('Voltage (V)');
title('PID Controller Output');