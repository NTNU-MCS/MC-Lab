% -------------------------------------------------------------------------
% This script is heavily customized and should not be used without caution.
% Almost every series had to be inspected manually to find the best 
% function to fit against before scripting to give repeatability.
% -------------------------------------------------------------------------

%% General plot settings - RUN FIRST
clear all
setup;

% Set default text interpreter
set(0,'defaulttextinterpreter','latex');
% Set filtype for the saved plots
filetype = '-depsc2';

%% Fit: surge - nonlinear
clearvars -except settings filetype

% Load data
load(strcat(settings(1).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( speed, surge);

% Set up fittype and options.
ft = fittype( 'poly3' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf -Inf -Inf 0];
opts.Upper = [Inf Inf Inf 0];

% Fit model to data.
[fitresult_nl_surge, gof_nl_surge] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(1)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_surge, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'SouthWest',...
					'Resistance vs. towing velocity',...
					'Non-linear resistance fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Non-linear resistance in surge')
xlabel('Towing velocity in surge [m/s]')
ylabel('Resistance [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_surge, xData, yData, 'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Towing velocity in surge [m/s]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(1).folder,'data.mat');
save(folderandname,'fitresult_nl_surge','gof_nl_surge','-append');
print(gcf,filetype,'../latex/figures/plots/surgefit_nl_surge')

fitresult_nl_surge
gof_nl_surge

p = sprintf('createFitting: surge fitting done.');
disp(p);
%% Fit: surge - linear
clearvars -except settings filetype

% Load data
load(strcat(settings(1).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( speed, surge);

% Set up fittype and options.
ft = fittype( 'poly1' );
excludedPoints = excludedata( xData, yData, 'Indices', [4 5 6 7 8 9 10 11 12 16 17 18 19 20 21 22 23 24 25 26] );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf 0];
opts.Upper = [Inf 0];
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult_surge, gof_surge] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(1); clf
set(gcf,'PaperPositionMode','auto')

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_surge, xData, yData, excludedPoints, 'predobs' );
handle = legend( h, 'Location', 'SouthWest',...
					'Resistance vs. towing velocity',...
					'Excluded resistance vs. velocity', ...
					'Linear resistance fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Linear resistance in surge')
xlabel('Towing velocity in surge [m/s]')
ylabel('Resistance [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_surge, xData, yData, excludedPoints, 'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Excluded resistance vs. velocity', ...
					'Zero Line' );
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Towing velocity in surge [m/s]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(1).folder,'data.mat');
save(folderandname,'fitresult_surge','gof_surge','-append');
print(gcf,filetype,'../latex/figures/plots/surgefit_surge')

fitresult_surge
gof_surge

p = sprintf('createFitting: surge fitting done.');
disp(p);

%% Fit: sway - nonlinear
%% 1 surge

clearvars -except settings filetype

% Load data
load(strcat(settings(3).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( speed, surge);

% Set up fittype and options.
ft = fittype( 'p1*x^4 + p2*abs(x)*x^2 + p3*x^2' );
% p1*x^4 + p3*x^2+ p4*x^6 + p2*abs(x)*x^2
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf  -Inf -Inf];
opts.Upper = [Inf Inf Inf];

% Fit model to data.
[fitresult_nl_surge, gof_nl_surge] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(1);
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_surge, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'South',...
					'Resistance vs. towing velocity',...
					'Non-linear resistance fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Non-linear resistance in surge')
xlabel('Towing velocity in sway [m/s]')
ylabel('Resistance [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_surge, xData, yData, 'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Towing velocity in sway [m/s]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(3).folder,'data.mat');
save(folderandname,'fitresult_nl_surge','gof_nl_surge','-append');
print(gcf,filetype,'../latex/figures/plots/swayfit_nl_surge')

fitresult_nl_surge
gof_nl_surge

p = sprintf('createFitting: sway fitting done.');
disp(p);
%% 2 sway
clearvars -except settings filetype

% Load data
load(strcat(settings(3).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( speed, sway);

% Set up fittype and options.
ft = fittype( 'poly3' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf -Inf -Inf 0];
opts.Upper = [Inf Inf Inf 0];

% Fit model to data.
[fitresult_nl_sway, gof_nl_sway] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(2);

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_sway, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'SouthWest',...
					'Resistance vs. towing velocity',...
					'Non-linear resistance fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Non-linear resistance in sway')
xlabel('Towing velocity in sway [m/s]')
ylabel('Resistance [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_sway, xData, yData, 'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Towing velocity in sway [m/s]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(1).folder,'data.mat');
save(folderandname,'fitresult_nl_sway','gof_nl_surge','-append');
print(gcf,filetype,'../latex/figures/plots/swayfit_nl_sway')

fitresult_nl_sway
gof_nl_sway

p = sprintf('createFitting: sway fitting done.');
disp(p);
%% 3 yaw - Needs evaluation and precise moment arms
clearvars -except settings filetype

% Load data
load(strcat(settings(3).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( speed, yaw);

% Set up fittype and options.
ft = fittype( 'poly3' );
% excludedPoints = excludedata( xData, yData, 'Indices', [ 8 ] );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf 0 -Inf 0];
opts.Upper = [Inf Inf 0 0];
% opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult_nl_yaw, gof_nl_yaw] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(3);
clf

% Plot fit with data.
subplot( 2, 1, 1 );
% h = plot( fitresult_nl_yaw, xData, yData, excludedPoints, 'predobs' );
h = plot( fitresult_nl_yaw, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'NorthEast',...
					'Moment vs. towing velocity',...
					'Non-linear moment fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Non-linear moment in yaw')
xlabel('Towing velocity in sway [m/s]')
ylabel('Moment [Nm]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
% h = plot( fitresult_nl_yaw, xData, yData, excludedPoints, 'residuals' );
h = plot( fitresult_nl_yaw, xData, yData, 'residuals' );

handle = legend( h, 'Location', 'SouthEast', ...
					'Moment fitting - residuals', ...
					'Zero Line' );
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Towing velocity in sway [m/s]')
ylabel('Residuals [Nm]')
grid on

folderandname = strcat(settings(3).folder,'data.mat');
save(folderandname,'fitresult_nl_yaw','gof_nl_yaw','-append');
print(gcf,filetype,'../latex/figures/plots/swayfit_nl_yaw')

fitresult_nl_yaw
gof_nl_yaw

p = sprintf('createFitting: sway fitting done.');
disp(p);

%% Fit: sway - linear
%% 1 surge
clearvars -except settings filetype

% Load data
load(strcat(settings(3).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( speed, surge);

% Set up fittype and options.
ft = fittype( 'poly1' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf  0];
opts.Upper = [Inf 0];

% Fit model to data.
[fitresult_surge, gof_surge] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(1);
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_surge, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'South',...
					'Resistance vs. towing velocity',...
					'Linear resistance fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Linear resistance in surge')
xlabel('Towing velocity in sway [m/s]')
ylabel('Resistance [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_surge, xData, yData, 'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Towing velocity in sway [m/s]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(3).folder,'data.mat');
save(folderandname,'fitresult_surge','gof_surge','-append');
print(gcf,filetype,'../latex/figures/plots/swayfit_surge')

fitresult_surge
gof_surge

p = sprintf('createFitting: sway fitting done.');
disp(p);
%% 2 sway
clearvars -except settings filetype

% Load data
load(strcat(settings(3).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( speed, sway);

% Set up fittype and options.
ft = fittype( 'poly1' );
excludedPoints = excludedata( xData, yData, 'Indices', [ 4 5 6 7 8 12 13 14 15 16] );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf 0];
opts.Upper = [Inf 0];
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult_sway, gof_sway] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(2);

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_sway, xData, yData, excludedPoints, 'predobs' );
handle = legend( h, 'Location', 'SouthWest',...
					'Resistance vs. towing velocity',...
					'Excluded surge vs. speed', ...
					'Linear resistance fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Linear resistance in sway')
xlabel('Towing velocity in sway [m/s]')
ylabel('Resistance [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_sway, xData, yData,  excludedPoints, 'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Excluded surge vs. speed', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Towing velocity in sway [m/s]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(1).folder,'data.mat');
save(folderandname,'fitresult_sway','gof_surge','-append');
print(gcf,filetype,'../latex/figures/plots/swayfit_sway')

fitresult_sway
gof_sway

p = sprintf('createFitting: sway fitting done.');
disp(p);
%% 3 yaw - Needs evaluation and precise moment arms
clearvars -except settings filetype

% Load data
load(strcat(settings(3).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( speed, yaw);

% Set up fittype and options
ft = fittype( 'poly1' );
excludedPoints = excludedata( xData, yData, 'Indices', [ 4 5 6 7 8 12 13 14 15 16] );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf 0];
opts.Upper = [Inf 0];
opts.Exclude = excludedPoints;

% Fit model to data
[fitresult_yaw, gof_yaw] = fit( xData, yData, ft, opts );

% Create a figure for the plots
figure(3); clf

% Plot fit with data
subplot( 2, 1, 1 );
h = plot( fitresult_yaw, xData, yData, excludedPoints, 'predobs' );
handle = legend( h, 'Location', 'SouthWest',...
					'Moment vs. towing velocity',...
					'Excluded moment vs. towing velocity', ...
					'Linear moment fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Linear moment in yaw')
xlabel('Towing velocity in sway [m/s]')
ylabel('Moment [Nm]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_yaw, xData, yData, excludedPoints, 'residuals' );
handle = legend( h, 'Resistance fitting - residuals', 'Excluded yaw vs. var', 'Zero Line', 'Location', 'SouthEast' );
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Towing velocity in sway [m/s]')
ylabel('Residuals [Nm]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_yaw, xData, yData, excludedPoints, 'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Moment fitting - residuals', ...
					'Excluded moment vs. towing velocity', ...
					'Zero Line' );
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Towing velocity in sway [m/s]')
ylabel('Residuals [Nm]')
grid on

folderandname = strcat(settings(3).folder,'data.mat');
save(folderandname,'fitresult_yaw','gof_yaw','-append');
print(gcf,filetype,'../latex/figures/plots/swayfit_yaw')

fitresult_yaw
gof_yaw

p = sprintf('createFitting: sway fitting done.');
disp(p);

%% Fit: surgeandsway
%% 1 surge
clearvars -except settings filetype

% Load data
load(strcat(settings(4).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( speed, surge);

% Set up fittype and options.
ft = fittype( 'poly3' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf -Inf -Inf 0];
opts.Upper = [Inf Inf Inf 0];

% Fit model to data.
[fitresultSurge, gofSurge] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure('Name', 'Resistance fitting - 3rd degree polynomial' );

% Set default text interpreter
set(0,'defaulttextinterpreter','latex');

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresultSurge, xData, yData, 'predobs' );
handle = legend( h, 'resistance vs. speed', 'Resistance fitting', 'Location', 'SouthWest' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresultSurge, xData, yData, 'residuals' );
handle = legend( h, 'Resistance fitting - residuals', 'Zero Line', 'Location', 'SouthEast' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

folderandname = strcat(settings(4).folder,'data.mat');
save(folderandname,'fitresultSurge','gofSurge','-append');
%% 2 sway
clearvars -except settings filetype

% Load data
load(strcat(settings(4).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( speed, sway);

% Set up fittype and options.
ft = fittype( 'poly3' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf -Inf -Inf 0];
opts.Upper = [Inf Inf Inf 0];

% Fit model to data.
[fitresultSway, gofSway] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure('Name', 'Resistance fitting - 3rd degree polynomial' );

% Set default text interpreter
set(0,'defaulttextinterpreter','latex');

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresultSway, xData, yData, 'predobs' );
handle = legend( h, 'resistance vs. speed', 'Resistance fitting', 'Location', 'SouthWest' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresultSway, xData, yData, 'residuals' );
handle = legend( h, 'Resistance fitting - residuals', 'Zero Line', 'Location', 'SouthEast' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

folderandname = strcat(settings(4).folder,'data.mat');
save(folderandname,'fitresultSway','gofSway','-append');

%==========================================================================

p = sprintf('createFitting: sway fitting done.');
disp(p);
%% 3 yaw 
clearvars -except settings filetype

% Load data
load(strcat(settings(4).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( speed, yaw);

% Set up fittype and options.
ft = fittype( 'poly3' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [0 -Inf -Inf 0];
opts.Upper = [0 Inf Inf 0];

% Fit model to data.
[fitresultYaw, gofYaw] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure('Name', 'Resistance fitting - 3rd degree polynomial' );

% Set default text interpreter
set(0,'defaulttextinterpreter','latex');

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresultYaw, xData, yData, 'predobs' );
handle = legend( h, 'resistance vs. speed', 'Resistance fitting', 'Location', 'SouthWest' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresultYaw, xData, yData, 'residuals' );
handle = legend( h, 'Resistance fitting - residuals', 'Zero Line', 'Location', 'SouthEast' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

folderandname = strcat(settings(4).folder,'data.mat');
save(folderandname,'fitresultYaw','gofYaw','-append');

%==========================================================================

p = sprintf('createFitting: sway fitting done.');
disp(p);

%% Fit: bowthruster - nonlinear
%% 1 positive
clearvars -except settings filetype

% Load data
load(strcat(settings(5).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( var, sway);

% Set up fittype and options.
ft = fittype( 'exp2' );
excludedPoints = excludedata( xData, yData, 'Indices', [1 2 3 4] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult_nl_pos, gof_nl_pos] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(1); clf

% Plot fit with data
subplot( 2, 1, 1 );
h = plot( fitresult_nl_pos, xData, yData, excludedPoints, 'predobs' );
handle = legend( h, 'Location', 'SouthEast',...
					'Sway force vs. thruster input',...
					'Excluded sway force vs. thruster input', ...
					'Exponential force fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Force in sway - positive side')
xlabel('Thruster input [-]')
ylabel('Force [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_pos, xData, yData, excludedPoints, 'residuals' );
handle = legend( h, 'Location', 'NorthEast',...
					'Sway force fitting - residuals',...
					'Excluded sway force vs. thruster input', ...
					'Zero Line' );
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thruster input [-]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(5).folder,'data.mat');
save(folderandname,'fitresult_nl_pos','gof_nl_pos','-append');
print(gcf,filetype,'../latex/figures/plots/bowthrusterfit_nl_pos')

fitresult_nl_pos
gof_nl_pos


p = sprintf('createFitting: bowthruster charateristics fitting done.');
disp(p);
%% 2 negative
clearvars -except settings filetype

% Load data
load(strcat(settings(5).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( var, sway);

% Set up fittype and options.
ft = fittype( 'exp2' );
excludedPoints = excludedata( xData, yData, 'Indices', [5 6 7 8 9 10 11 12 13 14] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult_nl_neg, gof_nl_neg] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(2); clf

% Plot fit with data
subplot( 2, 1, 1 );
h = plot( fitresult_nl_neg, xData, yData, excludedPoints);
handle = legend( h, 'Location', 'NorthWest',...
					'Sway force vs. thruster input',...
					'Excluded sway force vs. thruster input', ...
					'Exponential force fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Force in sway - negative side')
xlabel('Thruster input [-]')
ylabel('Force [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_neg, xData, yData, excludedPoints, 'residuals' );
handle = legend( h, 'Location', 'SouthEast',...
					'Sway force fitting - residuals',...
					'Excluded sway force vs. thruster input', ...
					'Zero Line' );
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thruster input [-]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(5).folder,'data.mat');
save(folderandname,'fitresult_nl_neg','gof_nl_neg','-append');
print(gcf,filetype,'../latex/figures/plots/bowthrusterfit_nl_neg')

fitresult_nl_neg
gof_nl_neg

p = sprintf('createFitting: bowthruster charateristics fitting done.');
disp(p);

%% Fit: bowthruster - linear
%% 1 positive
clearvars -except settings filetype

% Load data
load(strcat(settings(5).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( var, sway);

% Set up fittype and options.
ft = fittype( 'poly1' );
excludedPoints = excludedata( xData, yData, 'Indices', [1 2 3 4 10 11 12 13 14] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult_pos, gof_pos] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(1); clf

% Plot fit with data
subplot( 2, 1, 1 );
h = plot( fitresult_pos, xData, yData, excludedPoints, 'predobs' );
handle = legend( h, 'Location', 'SouthEast',...
					'Sway force vs. thruster input',...
					'Excluded sway force vs. thruster input', ...
					'Linear force fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Force in sway - positive side')
xlabel('Thruster input [-]')
ylabel('Force [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_pos, xData, yData, excludedPoints, 'residuals' );
handle = legend( h, 'Location', 'NorthEast',...
					'Sway force fitting - residuals',...
					'Excluded sway force vs. thruster input', ...
					'Zero Line' );
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thruster input [-]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(5).folder,'data.mat');
save(folderandname,'fitresult_pos','gof_pos','-append');
print(gcf,filetype,'../latex/figures/plots/bowthrusterfit_pos')

fitresult_pos
gof_pos


p = sprintf('createFitting: bowthruster charateristics fitting done.');
disp(p);
%% 2 negative
clearvars -except settings filetype

% Load data
load(strcat(settings(5).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( var, sway);

% Set up fittype and options.
ft = fittype( 'poly1' );
excludedPoints = excludedata( xData, yData, 'Indices', [5 6 7 8 9 10 11 12 13 14] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult_nl_neg, gof_nl_neg] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(2); clf

% Plot fit with data
subplot( 2, 1, 1 );
h = plot( fitresult_nl_neg, xData, yData, excludedPoints, 'predobs');
handle = legend( h, 'Location', 'NorthWest',...
					'Sway force vs. thruster input',...
					'Excluded sway force vs. thruster input', ...
					'Exponential force fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Force in sway - negative side')
xlabel('Thruster input [-]')
ylabel('Force [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_neg, xData, yData, excludedPoints, 'residuals' );
handle = legend( h, 'Location', 'SouthEast',...
					'Sway force fitting - residuals',...
					'Excluded sway force vs. thruster input', ...
					'Zero Line' );
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thruster input [-]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(5).folder,'data.mat');
save(folderandname,'fitresult_nl_neg','gof_nl_neg','-append');
print(gcf,filetype,'../latex/figures/plots/bowthrusterfit_nl_neg')

fitresult_nl_neg
gof_nl_neg

p = sprintf('createFitting: bowthruster charateristics fitting done.');
disp(p);

%% Fit: bowthruster_w_surge_vel 
clearvars -except settings filetype

% Load data
load(strcat(settings(6).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( [0 speed], [1.119 sway]);

% Set up fittype and options.
ft = fittype( 'a0 + a1*atan(b1*x +c1)', 'independent', 'x', 'dependent', 'y' );
excludedPoints = excludedata( xData, yData, 'Indices', [ 14 15] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.817627708322262 0.794831416883453 0.644318130193692 0.378609382660268];
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(1); clf;

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult, xData, yData, excludedPoints, 'predobs' );
handle = legend( h,	'Location', 'NorthEast', ...
					'Sway force vs. towing velocity', ...
					'Excluded sway force vs. towing velocity', ...
					'Resistance fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Non-linear sway force in surge')
xlabel('Towing velocity in surge [m/s]')
ylabel('Sway force [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult, xData, yData, excludedPoints, 'residuals' );
handle = legend( h, 'Location', 'NorthWest', ...
					'Sway force fitting - residuals', ...
					'Excluded sway force vs. towing velocity', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Towing velocity in surge [m/s]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(6).folder,'data.mat');
save(folderandname,'fitresult','gof','-append');
print(gcf,filetype,'../latex/figures/plots/tunnelThrusterLoss')

fitresult
gof


p = sprintf('createFitting: FIX fitting done.');
disp(p);

%% Fit: directional_test_both_thrusters - UNFINISHED
%% 1 surge
clearvars -except settings filetype

% Load data
load(strcat(settings(7).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, surge);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_surge, gof_nl_surge] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(1)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_surge, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'NorthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Thrust in surge-direction with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Thrust [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_surge, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_surge','gof_nl_surge','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_both_surge')

fitresult_nl_surge
gof_nl_surge

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 2 sway
clearvars -except settings filetype

% Load data
load(strcat(settings(7).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, sway);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_sway, gof_nl_sway] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(2)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_sway, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'SouthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Thrust in sway-direction with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Thrust [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_sway, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_sway','gof_nl_sway','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_both_sway')

fitresult_nl_sway
gof_nl_sway

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 3 yaw
clearvars -except settings filetype

% Load data
load(strcat(settings(7).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, yaw);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_yaw, gof_nl_yaw] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(3)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_yaw, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'NorthEast',...
					'Moment vs. thrust direction',...
					'Non-linear moment fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Moment in yaw with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Moment [Nm]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_yaw, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [Nm]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_yaw','gof_nl_yaw','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_both_yaw');

fitresult_nl_yaw
gof_nl_yaw

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 4 force
clearvars -except settings filetype

% Load data
load(strcat(settings(7).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, force);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_force, gof_nl_force] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(4)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_force, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'NorthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Thrust with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Thrust [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_force, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_force','gof_nl_force','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_both_force')

fitresult_nl_force
gof_nl_force

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 5 polar
clearvars -except settings filetype

% Load data
load(strcat(settings(7).folder,'data.mat'));

% Prepare data
[xData_surge, yData_surge] = prepareCurveData( var, surge);
[xData_sway, yData_sway] = prepareCurveData( var, sway);
[xData_force, yData_force] = prepareCurveData( var, force);
x_fit = 0:pi/32:2*pi;
y_fit_surge = fitresult_nl_surge(x_fit);
y_fit_sway = fitresult_nl_sway(x_fit);
y_fit_force = fitresult_nl_force(x_fit);
y_fit_force_comb = sqrt(y_fit_surge.^2 + y_fit_sway.^2);

% Create a figure for the plots.
figure(5)
clf


% Plot residuals.
h = subplot( 2, 1, 1 );
polar( xData_surge, abs(yData_surge)); hold on;
polar( xData_sway, abs(yData_sway));
polar(x_fit',abs(y_fit_surge));
polar(x_fit',abs(y_fit_sway));
view([90 -90]);
handle = legend( h, 'Location', 'NorthEast', ...
					'Thrust in surge vs. thrust direction',...
					'Thrust in sway vs. thrust direction',...
					'Non-linear thrust fitting for surge', ...
					'Non-linear thrust fitting for sway');
set(handle,'Interpreter','latex')

% Labels
title('Thrust in surge- and sway-direction with varying directional force')
% xlabel('Thrust direction [rad]')
% ylabel('Residuals [N]')
grid on

% Plot fit with data.
% figure(5)
% clf
h = subplot( 2, 1, 2 );
polar( xData_force, yData_force ); hold on;
polar(x_fit',y_fit_force);
polar(x_fit',y_fit_force_comb);

view([90 -90])
handle = legend( h, 'Location', 'NorthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'Combined fitresult from surge and sway');
set(handle,'Interpreter','latex')

% Labels
title('Thrust with varying directional force')
% xlabel('Thrust direction [rad]')
% ylabel('Thrust [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
% save(folderandname,'fitresult_nl_force','gof_nl_force','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_both_polar')


p = sprintf('createFitting: FIX fitting done.');
disp(p);

%% Fit: directional_test_single_thruster_port - UNFINISHED
%% 1 surge
clearvars -except settings filetype

% Load data
load(strcat(settings(8).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, surge);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_surge, gof_nl_surge] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(1)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_surge, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'NorthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Thrust in surge-direction with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Thrust [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_surge, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_surge','gof_nl_surge','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_port_surge')

fitresult_nl_surge
gof_nl_surge

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 2 sway
clearvars -except settings filetype fitresult_nl_surge

% Load data
load(strcat(settings(8).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, sway);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_sway, gof_nl_sway] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(2)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_sway, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'SouthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Thrust in sway-direction with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Thrust [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_sway, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_sway','gof_nl_sway','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_port_sway')

fitresult_nl_sway
gof_nl_sway

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 3 yaw
clearvars -except settings filetype fitresult_nl_surge fitresult_nl_sway

% Load data
load(strcat(settings(8).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, yaw);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_yaw, gof_nl_yaw] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(3)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_yaw, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'NorthEast',...
					'Moment vs. thrust direction',...
					'Non-linear moment fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Moment in yaw with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Moment [Nm]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_yaw, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [Nm]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_yaw','gof_nl_yaw','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_port_yaw');

fitresult_nl_yaw
gof_nl_yaw

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 4 force
clearvars -except settings filetype fitresult_nl_surge fitresult_nl_sway fitresult_nl_yaw

% Load data
load(strcat(settings(8).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, force);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_force, gof_nl_force] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(4)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_force, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'NorthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Thrust with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Thrust [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_force, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_force','gof_nl_force','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_port_force')

fitresult_nl_force
gof_nl_force

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 5 polar
clearvars -except settings filetype fitresult_nl_surge fitresult_nl_sway fitresult_nl_yaw fitresult_nl_force

% Load data
load(strcat(settings(8).folder,'data.mat'));

% Prepare data
[xData_surge, yData_surge] = prepareCurveData( var, surge);
[xData_sway, yData_sway] = prepareCurveData( var, sway);
[xData_force, yData_force] = prepareCurveData( var, force);
x_fit = 0:pi/32:2*pi;
y_fit_surge = fitresult_nl_surge(x_fit);
y_fit_sway = fitresult_nl_sway(x_fit);
y_fit_force = fitresult_nl_force(x_fit);
y_fit_force_comb = sqrt(y_fit_surge.^2 + y_fit_sway.^2);

% Create a figure for the plots.
figure(5)
clf


% Plot residuals.
h = subplot( 2, 1, 1 );
polar( xData_surge, abs(yData_surge)); hold on;
polar( xData_sway, abs(yData_sway));
polar(x_fit',abs(y_fit_surge));
polar(x_fit',abs(y_fit_sway));
view([90 -90]);
handle = legend( h, 'Location', 'NorthEast', ...
					'Thrust in surge vs. thrust direction',...
					'Thrust in sway vs. thrust direction',...
					'Non-linear thrust fitting for surge', ...
					'Non-linear thrust fitting for sway');
set(handle,'Interpreter','latex')

% Labels
title('Thrust in surge- and sway-direction with varying directional force')
% xlabel('Thrust direction [rad]')
% ylabel('Residuals [N]')
grid on

% Plot fit with data.
% figure(5)
% clf
h = subplot( 2, 1, 2 );
polar( xData_force, yData_force ); hold on;
polar(x_fit',y_fit_force);
polar(x_fit',y_fit_force_comb);

view([90 -90])
handle = legend( h, 'Location', 'NorthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'Combined fitresult from surge and sway');
set(handle,'Interpreter','latex')

% Labels
title('Thrust with varying directional force')
% xlabel('Thrust direction [rad]')
% ylabel('Thrust [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
% save(folderandname,'fitresult_nl_force','gof_nl_force','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_port_polar')


p = sprintf('createFitting: FIX fitting done.');
disp(p);

%% Fit: directional_test_single_thruster_starboard - UNFINISHED
%% 1 surge
clearvars -except settings filetype

% Load data
load(strcat(settings(9).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, surge);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_surge, gof_nl_surge] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(1)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_surge, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'NorthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Thrust in surge-direction with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Thrust [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_surge, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_surge','gof_nl_surge','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_starboard_surge')

fitresult_nl_surge
gof_nl_surge

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 2 sway
clearvars -except settings filetype fitresult_nl_surge

% Load data
load(strcat(settings(9).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, sway);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_sway, gof_nl_sway] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(2)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_sway, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'SouthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Thrust in sway-direction with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Thrust [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_sway, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_sway','gof_nl_sway','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_starboard_sway')

fitresult_nl_sway
gof_nl_sway

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 3 yaw
clearvars -except settings filetype fitresult_nl_surge fitresult_nl_sway

% Load data
load(strcat(settings(9).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, yaw);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_yaw, gof_nl_yaw] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(3)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_yaw, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'NorthEast',...
					'Moment vs. thrust direction',...
					'Non-linear moment fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Moment in yaw with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Moment [Nm]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_yaw, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [Nm]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_yaw','gof_nl_yaw','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_starboard_yaw');

fitresult_nl_yaw
gof_nl_yaw

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 4 force
clearvars -except settings filetype fitresult_nl_surge fitresult_nl_sway fitresult_nl_yaw

% Load data
load(strcat(settings(9).folder,'data.mat'));

% Extend data series to increase the number of data points for curvefitting
var		= [var(1:end-1)-2*pi var var(2:end)+2*pi];
surge	= [surge(1:end-1) surge surge(2:end)];
sway	= [sway(1:end-1) sway sway(2:end)];
force	= [force(1:end-1) force force(2:end)];
yaw		= [yaw(1:end-1) yaw yaw(2:end)];

% Prepare data
[xData, yData] = prepareCurveData( var, force);

% Set up fittype and options.
ft = fittype( 'sin6' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];

% Fit model to data.
[fitresult_nl_force, gof_nl_force] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(4)
clf

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult_nl_force, xData, yData, 'predobs' );
handle = legend( h, 'Location', 'NorthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'95\% prediction bounds' );
set(handle,'Interpreter','latex')

% Labels
title('Thrust with varying directional force')
xlabel('Thrust direction [rad]')
ylabel('Thrust [N]')
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult_nl_force, xData, yData,  'residuals' );
handle = legend( h, 'Location', 'SouthEast', ...
					'Resistance fitting - residuals', ...
					'Zero Line');
set(handle,'Interpreter','latex')

% Labels
title('Residuals')
xlabel('Thrust direction [rad]')
ylabel('Residuals [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
save(folderandname,'fitresult_nl_force','gof_nl_force','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_starboard_force')

fitresult_nl_force
gof_nl_force

p = sprintf('createFitting: FIX fitting done.');
disp(p);
%% 5 polar
clearvars -except settings filetype fitresult_nl_surge fitresult_nl_sway fitresult_nl_yaw fitresult_nl_force

% Load data
load(strcat(settings(9).folder,'data.mat'));

% Prepare data
[xData_surge, yData_surge] = prepareCurveData( var, surge);
[xData_sway, yData_sway] = prepareCurveData( var, sway);
[xData_force, yData_force] = prepareCurveData( var, force);
x_fit = 0:pi/32:2*pi;
y_fit_surge = fitresult_nl_surge(x_fit);
y_fit_sway = fitresult_nl_sway(x_fit);
y_fit_force = fitresult_nl_force(x_fit);
y_fit_force_comb = sqrt(y_fit_surge.^2 + y_fit_sway.^2);

% Create a figure for the plots.
figure(5)
clf


% Plot residuals.
h = subplot( 2, 1, 1 );
polar( xData_surge, abs(yData_surge)); hold on;
polar( xData_sway, abs(yData_sway));
polar(x_fit',abs(y_fit_surge));
polar(x_fit',abs(y_fit_sway));
view([90 -90]);
handle = legend( h, 'Location', 'NorthEast', ...
					'Thrust in surge vs. thrust direction',...
					'Thrust in sway vs. thrust direction',...
					'Non-linear thrust fitting for surge', ...
					'Non-linear thrust fitting for sway');
set(handle,'Interpreter','latex')

% Labels
title('Thrust in surge- and sway-direction with varying directional force')
% xlabel('Thrust direction [rad]')
% ylabel('Residuals [N]')
grid on

% Plot fit with data.
% figure(5)
% clf
h = subplot( 2, 1, 2 );
polar( xData_force, yData_force ); hold on;
polar(x_fit',y_fit_force);
polar(x_fit',y_fit_force_comb);

view([90 -90])
handle = legend( h, 'Location', 'NorthEast',...
					'Thrust vs. thrust direction',...
					'Non-linear thrust fitting', ...
					'Combined fitresult from surge and sway');
set(handle,'Interpreter','latex')

% Labels
title('Thrust with varying directional force')
% xlabel('Thrust direction [rad]')
% ylabel('Thrust [N]')
grid on

folderandname = strcat(settings(7).folder,'data.mat');
% save(folderandname,'fitresult_nl_force','gof_nl_force','-append');
print(gcf,filetype,'../latex/figures/plots/directional_test_starboard_polar')


p = sprintf('createFitting: FIX fitting done.');
disp(p);

%% Fit: propeller_char

clearvars -except settings filetype

% Load data
load(strcat(settings(10).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( [0 var], [0 force]);

% Set up fittype and options.
ft = fittype( 'poly3' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf -Inf -Inf 0];
opts.Upper = [Inf Inf Inf 0];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(1); clf;

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult, xData, yData, 'predobs' );
handle = legend( h, 'resistance vs. speed', 'Resistance fitting', 'Location', 'SouthWest' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult, xData, yData, 'residuals' );
handle = legend( h, 'Resistance fitting - residuals', 'Zero Line', 'Location', 'SouthEast' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

folderandname = strcat(settings(10).folder,'data.mat');
save(folderandname,'fitresult','gof','-append');

p = sprintf('createFitting: surge fitting done.');
disp(p);

%% Fit: propeller_char_port

clearvars -except settings filetype

% Load data
load(strcat(settings(11).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( [0 var], [0 force]);

% Set up fittype and options.
ft = fittype( 'poly3' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf -Inf -Inf 0];
opts.Upper = [Inf Inf Inf 0];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(2); clf;

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult, xData, yData, 'predobs' );
handle = legend( h, 'resistance vs. speed', 'Resistance fitting', 'Location', 'SouthWest' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult, xData, yData, 'residuals' );
handle = legend( h, 'Resistance fitting - residuals', 'Zero Line', 'Location', 'SouthEast' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

folderandname = strcat(settings(11).folder,'data.mat');
save(folderandname,'fitresult','gof','-append');

p = sprintf('createFitting: surge fitting done.');
disp(p);

%% Fit: propeller_char_starboard

clearvars -except settings filetype

% Load data
load(strcat(settings(12).folder,'data.mat'));

% Prepare data
[xData, yData] = prepareCurveData( [0 var], [0 force]);

% Set up fittype and options.
ft = fittype( 'poly3' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [-Inf -Inf -Inf 0];
opts.Upper = [Inf Inf Inf 0];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Create a figure for the plots.
figure(3); clf; 

% Plot fit with data.
subplot( 2, 1, 1 );
h = plot( fitresult, xData, yData, 'predobs' );
handle = legend( h, 'resistance vs. speed', 'Resistance fitting', 'Location', 'NorthWest' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

% Plot residuals.
subplot( 2, 1, 2 );
h = plot( fitresult, xData, yData, 'residuals' );
handle = legend( h, 'Resistance fitting - residuals', 'Zero Line', 'Location', 'SouthEast' );
set(handle,'Interpreter','latex')
% Label axes
xlabel speed
ylabel resistance
grid on

folderandname = strcat(settings(12).folder,'data.mat');
save(folderandname,'fitresult','gof','-append');

p = sprintf('createFitting: surge fitting done.');
disp(p);


























