clc;
clear all;

% Correction for data placement according to the definitions for the
% general system. This is NOT the same for all the experiments and must be
% entered manually for each setup.

settings(1).folder		= 'Lin Drag/';
settings(1).ascFolder	= 'Lin Drag/asc/';
settings(1).matFolder	= 'Lin Drag/mat/';
settings(1).dataOrder	= [	3	2	4];		% [bow surge, bow sway, stern sway]
settings(1).dataSign	= [	-1	1	1];		% [bow surge, bow sway, stern sway]

% settings(2).folder		= 'CSE1/incremental_surge/';
% settings(2).ascFolder	= 'CSE1/incremental_surge/asc/';
% settings(2).matFolder	= 'CSE1/incremental_surge/mat/';
% settings(2).dataOrder	= [	3	2	4];		% [bow surge, bow sway, stern sway]
% settings(2).dataSign	= [	-1	1	1];		% [bow surge, bow sway, stern sway]
% 
% settings(3).folder		= 'CSE1/sway/';
% settings(3).ascFolder	= 'CSE1/sway/asc/';
% settings(3).matFolder	= 'CSE1/sway/mat/';
% settings(3).dataOrder	= [	3	2	4];		% [bow surge, bow sway, stern sway]
% settings(3).dataSign	= [	-1	-1	-1];	% [bow surge, bow sway, stern sway]
% 
% settings(4).folder		= 'CSE1/surgeandsway/';
% settings(4).ascFolder	= 'CSE1/surgeandsway/asc/';
% settings(4).matFolder	= 'CSE1/surgeandsway/mat/';
% settings(4).dataOrder	= [	3	2	4];		% [bow surge, bow sway, stern sway]
% settings(4).dataSign	= [	-1	1	1];		% [bow surge, bow sway, stern sway]
% 
% settings(5).folder		= 'CSE1/bowthruster/';
% settings(5).ascFolder	= 'CSE1/bowthruster/asc/';
% settings(5).matFolder	= 'CSE1/bowthruster/mat/';
% settings(5).dataOrder	= [	3	2	4];		% [bow surge, bow sway, stern sway]
% settings(5).dataSign	= [	-1	1	1];		% [bow surge, bow sway, stern sway]
% settings(5).var			= [-.1 -.2 -.3 -.4 .1 .2 .3 .4 .5 .6 .7 .8 .9 1.0];
% settings(5).signCorrection = [1 1 -1 1 1 1 1 1 1 -1 -1 -1 -1 -1];
% 
% settings(6).folder		= 'CSE1/bowthruster_w_surge_vel/';
% settings(6).ascFolder	= 'CSE1/bowthruster_w_surge_vel/asc/';
% settings(6).matFolder	= 'CSE1/bowthruster_w_surge_vel/mat/';
% settings(6).dataOrder	= [	3	4	2];		% [bow surge, bow sway, stern sway]
% settings(6).dataSign	= [	-1	1	1];		% [bow surge, bow sway, stern sway]
% 
% settings(7).folder		= 'CSE1/VSP/directional_test_both_thrusters/';
% settings(7).ascFolder	= 'CSE1/VSP/directional_test_both_thrusters/asc/';
% settings(7).matFolder	= 'CSE1/VSP/directional_test_both_thrusters/mat/';
% settings(7).dataOrder	= [	3	4	2];		% [bow surge, bow sway, stern sway]
% settings(7).dataSign	= [	-1	1	1];		% [bow surge, bow sway, stern sway]
% settings(7).var			= [0 -1/8 -2/8 -3/8 -4/8 -5/8 -6/8 -7/8 -1 0 1/8 2/8 3/8 4/8 5/8 6/8 7/8 1]*pi; 
% 
% settings(8).folder		= 'CSE1/VSP/directional_test_single_thruster_port/';
% settings(8).ascFolder	= 'CSE1/VSP/directional_test_single_thruster_port/asc/';
% settings(8).matFolder	= 'CSE1/VSP/directional_test_single_thruster_port/mat/';
% settings(8).dataOrder	= [	3	4	2];		% [bow surge, bow sway, stern sway]
% settings(8).dataSign	= [	-1	1	1];		% [bow surge, bow sway, stern sway]
% settings(8).var			= [0 -1/8 -2/8 -3/8 -4/8 -5/8 -6/8 -7/8 -1 0 1/8 2/8 3/8 4/8 5/8 6/8 7/8 1]*pi; 
% 
% settings(9).folder		= 'CSE1/VSP/directional_test_single_thruster_starboard/';
% settings(9).ascFolder	= 'CSE1/VSP/directional_test_single_thruster_starboard/asc/';
% settings(9).matFolder	= 'CSE1/VSP/directional_test_single_thruster_starboard/mat/';
% settings(9).dataOrder	= [	3	4	2];		% [bow surge, bow sway, stern sway]
% settings(9).dataSign	= [	-1	1	1];		% [bow surge, bow sway, stern sway]
% settings(9).var			= [0 -1/8 -2/8 -3/8 -4/8 -5/8 -6/8 -7/8 -1 0 1/8 2/8 3/8 4/8 5/8 6/8 7/8 1]*pi; 
% 
% settings(10).folder		= 'CSE1/VSP/propeller_char/';
% settings(10).ascFolder	= 'CSE1/VSP/propeller_char/asc/';
% settings(10).matFolder	= 'CSE1/VSP/propeller_char/mat/';
% settings(10).dataOrder	= [	3	4	2];		% [bow surge, bow sway, stern sway]
% settings(10).dataSign	= [	-1	1	1];		% [bow surge, bow sway, stern sway]
% settings(10).var		= [.2 .3 .4 .5 .6 .7];
% 
% settings(11).folder		= 'CSE1/VSP/propeller_char_port/';
% settings(11).ascFolder	= 'CSE1/VSP/propeller_char_port/asc/';
% settings(11).matFolder	= 'CSE1/VSP/propeller_char_port/mat/';
% settings(11).dataOrder	= [	3	4	2];		% [bow surge, bow sway, stern sway]
% settings(11).dataSign	= [	-1	1	1];		% [bow surge, bow sway, stern sway]
% settings(11).var		= [.2 .3 .4 .5 .6 .7];
% 
% settings(12).folder		= 'CSE1/VSP/propeller_char_starboard/';
% settings(12).ascFolder	= 'CSE1/VSP/propeller_char_starboard/asc/';
% settings(12).matFolder	= 'CSE1/VSP/propeller_char_starboard/mat/';
% settings(12).dataOrder	= [	3	4	2];		% [bow surge, bow sway, stern sway]
% settings(12).dataSign	= [	-1	1	1];		% [bow surge, bow sway, stern sway]
% settings(12).var		= [.2 .3 .4 .5 .6 .7];

%==========================================================================
% NOT FINISHED

for i = 1:length(settings)
	settings(i).momentArm = [0.57 -0.575];
end;
clear i;
%==========================================================================

