Coupled = 1;%No V, E, or Rho. Proton and Electron not coupled?
TwoCarriers = 1; %electrons and protons
RC = 1; %Built-in E-field?

nx = 201;
l = 1e-6; 

x =linspace(0,l,nx);
dx = x(2)-x(1);
xm = x(1:nx-1) + 0.5*dx;
% Nd = 1e16 * 1e6; % Const. 1/cm3 (100 cm/m)^3

%V gets larger and there becomes a constant E field due to the doping.
%Parameters shift faster due to the constant E field, n+p are the
%same?(bottom right graph)

% dx = xnew(2)-xnew(1);%Additional
% xm = xnew(1:nx-1) + 0.5*dx;

% xnew = linspace(1e16,20e16,nx);%Additional
% Nd = xnew;%Additional
        



% dx = x(2) - x(1);
% xm = x(1:nx-1) + 0.5*dx;

Exponential = linspace(1,log(20e16),nx);
xnewnew = exp(Exponential);
Nd = xnewnew;

NetDoping = ones(1,nx).*Nd; % doping

x0 = l/2;
nw = l/20;
% npDisturbance = 1e16*1e6*exp(-((x-x0)/nw).^2); %Recombination? Makes things symmetrical
npDisturbance = 1e16*1e6*exp(-((x-x0)/nw).^2); %Recombination? Makes things symmetrical


LVbc = 0;
RVbc = 0;

TStop = 14200000*1e-18;
PlDelt = 100000*1e-18;

% PlotYAxis = {[-1e-15 2e-15] [-2e-9 2e-9] [-1.5e-12 1.5e-12]...
%     [1e22 2e22] [0 1e22] [0 20e43]...
%     [-20e33 15e33] [-2.5e34 2e34] [-1.1e8 1.1e8] ...
%     [-1e8 1e8] [-10e-3 10e-3] [0 2e22]};

doPlotImage = 0;
PlotFile = 'Gau2CarRC.gif';
