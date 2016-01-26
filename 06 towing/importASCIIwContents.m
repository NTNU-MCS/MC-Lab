function [] = importASCIIwContents(settings)

disp('Importing data...');

for j = 1:length(settings)
	
	% Load all the names of the files in the current set folder
	asc_files = dir(fullfile(pwd,strcat(settings(j).ascFolder,'*.asc')));
	
	% Create a .mat file for each of the runs
	for i=1:length(asc_files);
		
		if exist(strcat(settings(j).matFolder,asc_files(i,1).name(1:end-4)),'file') > 0
			load(strcat(settings(j).matFolder,asc_files(i,1).name(1:end-4),'.mat'));
			disp('success');
		end;

		tmp	= importASCIIwContents_data(strcat(settings(j).ascFolder,asc_files(i,1).name));
		t.data		= tmp(:,1);
		f1.data		= tmp(:,settings(j).dataOrder(1))*settings(j).dataSign(1);
		f2.data		= tmp(:,settings(j).dataOrder(2))*settings(j).dataSign(2);
		f3.data		= tmp(:,settings(j).dataOrder(3))*settings(j).dataSign(3);
		pos.data	= tmp(:,5);
		speed.data	= tmp(:,6);

		[tmp1 tmp2 tmp3 tmp4 tmp5 tmp6]	= importASCIIwContents_info(strcat(settings(j).ascFolder,asc_files(i,1).name));
		tmp_info	= [tmp1 tmp2 tmp3 tmp4 tmp5 tmp6];
		t.info		= tmp_info(:,1);
		f1.info		= tmp_info(:,settings(j).dataOrder(1));
		f2.info		= tmp_info(:,settings(j).dataOrder(2));
		f3.info		= tmp_info(:,settings(j).dataOrder(3));
		pos.info	= tmp_info(:,5);
		speed.info	= tmp_info(:,6);
		
		if length(settings(j).signCorrection) > 0
			f2.data		= f2.data*settings(j).signCorrection(i);
			f3.data		= f3.data*settings(j).signCorrection(i);
			disp('test');
		end;

		targetfolderandname = strcat(settings(j).matFolder,asc_files(i,1).name(1:end-4));
		save(targetfolderandname,'t','f1','f2','f3','pos','speed','-append');

		p = sprintf('File %d of %d finished in folder %d of %d.',i,length(asc_files),j,length(settings));
		disp(p);
	end;
end;

disp('Import of data: Done');