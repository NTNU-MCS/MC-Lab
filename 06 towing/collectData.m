			
function [] = collectData(settings)

for j = 1: length(settings)
	
	mat_files = dir(fullfile(pwd,strcat(settings(j).matFolder,'*.mat')));
	
	for i = 1:length(mat_files);
		load(strcat(settings(j).matFolder,mat_files(i,1).name));
		
		for k = 1:n_series
			tmp_pos(k+(i-1)*n_series)	= pos.avgRes(k);
			tmp_speed(k+(i-1)*n_series)	= speed.avgRes(k);
			tmp_f1(k+(i-1)*n_series)	= f1.avgRes(k);
            tmp_f2(k+(i-1)*n_series)	= f2.avgRes(k);
            tmp_f3(k+(i-1)*n_series)	= f3.avgRes(k);
			
			surge(k+(i-1)*n_series)		= f1.avgRes(k);
			sway(k+(i-1)*n_series)		= f2.avgRes(k)+f3.avgRes(k);
			force(k+(i-1)*n_series)		= sqrt(f1.avgRes(k)^2+(f2.avgRes(k)+f3.avgRes(k))^2);
			yaw(k+(i-1)*n_series)		= f2.avgRes(k)*settings(j).momentArm(1)+f3.avgRes(k)*settings(j).momentArm(2);
		end;
		

	end;
		clearvars pos speed f1 f2 f3
		
		pos		= tmp_pos;
		speed	= tmp_speed;
		f1		= tmp_f1;
		f2		= tmp_f2;
        f3		= tmp_f3;
		
		folderandname = strcat(settings(j).folder,'data.mat');
		save(folderandname,'f1','f2','f3','pos','speed','surge','sway', 'force','yaw');
		
		p = sprintf('collectData: File %d of %d finished in folder %d of %d.',i,length(mat_files),j,length(settings));
		disp(p);
		
		clearvars -except settings i j mat_files

end;

p = sprintf('collectData: Finished');
disp(p);






