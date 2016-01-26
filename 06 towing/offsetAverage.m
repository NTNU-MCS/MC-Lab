			
function [] = collect(settings)

for j = 1: length(settings)
	
	mat_files = dir(fullfile(pwd,strcat(settings(j).matFolder,'*.mat')));
% 	disp(' ');
% 	p = sprintf('Loaded folder: %s',settings(j).matFolder);
% 	disp(p);
	
	for i = 1:length(mat_files);
		
		load(strcat(settings(j).matFolder,mat_files(i,1).name));
		
		for k = 1:n_series
			speed.offset(k)	= mean(speed.data(meanTime(k,1):meanTime(k,2)));
			speed.avgRes(k)	= mean(speed.data(resTime(k,1):resTime(k,2))) - speed.offset(k);

			pos.offset(k)	= mean(pos.data(meanTime(k,1):meanTime(k,2)));
			pos.avgRes(k)	= mean(pos.data(resTime(k,1):resTime(k,2))) - pos.offset(k);

			f1.offset(k)	= mean(f1.data(meanTime(k,1):meanTime(k,2)));
			f2.offset(k) 	= mean(f2.data(meanTime(k,1):meanTime(k,2)));
			f3.offset(k)	= mean(f3.data(meanTime(k,1):meanTime(k,2)));

			f1.avgRes(k)	= mean(f1.data(resTime(k,1):resTime(k,2))) - f1.offset(k);
			f2.avgRes(k)	= mean(f2.data(resTime(k,1):resTime(k,2))) - f2.offset(k);
			f3.avgRes(k)	= mean(f3.data(resTime(k,1):resTime(k,2))) - f3.offset(k);
		end;
		
		folderandname = strcat(settings(j).matFolder,mat_files(i,1).name(1:end-4));
		save(folderandname,'f1','f2','f3','pos','speed','-append');

		clear f1 f2 f3 pos speed
		
		p = sprintf('offsetAverage: File %d of %d finished in folder %d of %d.',i,length(mat_files),j,length(settings));
		disp(p);
	end;
	

end;








