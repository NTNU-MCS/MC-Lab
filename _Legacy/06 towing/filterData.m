function [] = filterData(settings)

% Fs = 200;

for j = 1: length(settings)
	
	% Load all the names of the files in the current set folder
	mat_files = dir(fullfile(pwd,strcat(settings(j).matFolder,'*.mat')));
	
	for i = 1:length(mat_files)
		load(strcat(settings(j).matFolder,mat_files(i,1).name));

		n = 2;
		Wn = 0.005;
		[b,a] = butter(n,Wn);
		speed.filt = filtfilt(b,a,speed.data);
		pos.filt = filtfilt(b,a,pos.data);

		n = 3;
		Wn = 2/(200*2);
		[b,a] = butter(n,Wn);
		f1.filt = filtfilt(b,a,f1.data);
		f2.filt = filtfilt(b,a,f2.data);
		f3.filt = filtfilt(b,a,f3.data);

		folderandname = strcat(settings(j).matFolder,mat_files(i,1).name(1:end-4));
		save(folderandname,'t','f1','f2','f3','pos','speed','-append');
		
		p = sprintf('File %d of %d finished in folder %d of %d.',i,length(mat_files),j,length(settings));
		disp(p);
	end;
end;

disp('Filtering done.');

