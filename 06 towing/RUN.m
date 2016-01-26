%% Setup
setup;

series = [1:3];

%% Import data
% importASCIIwContents(settings(series));

%% Filtering
filterData(settings(series));

%% Select data
selectData(settings(series));

%% Calculate the offsets and the corrected averaged results
offsetAverage(settings(series));

%% Collect the results
collectData(settings(series));

%% Add missing data
missingData(settings(series));

%% Curve fitting
% curveFitting;








