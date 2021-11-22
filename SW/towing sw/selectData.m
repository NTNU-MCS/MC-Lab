function [] = selectData(settings)

for j = 1:length(settings);
	
	mat_files = dir(fullfile(pwd,strcat(settings(j).matFolder,'*.mat')));
	disp(' ');
	p = sprintf('Loaded folder: %s',settings(j).matFolder);
	disp(p);
	
	if length(mat_files) > 1
		if input('Does all the files have the same number of result series? (y/n): ','s') == 'y'
			general_n_series = input('How many series are there?: ');
		else
			general_n_series = 0;
		end;
	else
		general_n_series = 0;
	end;
	
	for i = 1:length(mat_files);
		disp(' ');
		load(strcat(settings(j).matFolder,mat_files(i,1).name));
		p = sprintf('Loaded file: %s', mat_files(i,1).name);
		disp(p);
		
		% Initial plotting
		clf;
		if exist('meanTime','var') == true && exist('resTime','var') == true; % meanTime has been set before
			tmp1 = unique(reshape(meanTime,[1,numel(meanTime)]));
			tmp2 = unique(reshape(resTime,[1,numel(resTime)]));
			tmp = unique([tmp1 tmp2]);
		end;
		subplot(2,2,1);		
			plot(t.data,f1.data); grid on; hold on; title('f1');
			plot(t.data,f1.filt);
			if exist('meanTime','var') == true && exist('resTime','var') == true; % meanTime has been set before
				set(gca, 'XTick', sort(tmp/200));
			end;

		subplot(2,2,2);
			plot(t.data,f2.data); grid on; hold on; title('f2');
			plot(t.data,f2.filt);
			if exist('meanTime','var') == true && exist('resTime','var') == true; % meanTime has been set before
				set(gca, 'XTick', sort(tmp/200));
			end;

		subplot(2,2,4);
			plot(t.data,f3.data); grid on; hold on; title('f3');
			plot(t.data,f3.filt);
			if exist('meanTime','var') == true && exist('resTime','var') == true; % meanTime has been set before
				set(gca, 'XTick', sort(tmp/200));
			end;

		subplot(2,2,3);
			plot(t.data,speed.data); grid on; hold on; title('speed');
			plot(t.data,speed.filt);
			if exist('meanTime','var') == true && exist('resTime','var') == true; % meanTime has been set before
				set(gca, 'XTick', sort(tmp/200));
			end;
		
		if exist('meanTime','var') == true && exist('resTime','var') == true
			keep_old_data = input('Do you wish to keep the old mean times and result times? (y/n): ','s');
		else
			keep_old_data = 'n';
		end
		
		if keep_old_data == 'n'
			if general_n_series ~= 0
				n_series = general_n_series;
			else
				n_series = input('Enter the number of different result series to select: ');
				% Add some test for this number to ensure positive and integer?
			end;
			
			if n_series > 1
				mult_mean = input('Is there multiple mean series (y/n): ','s');
			else
				mult_mean = 'n';
			end;

			if exist('meanTime','var') == false || keep_old_data == 'n'; % meanTime has not been set before
	% 		if exist('meanTime','var') == false; % meanTime has not been set before
				meanTime(1:n_series,1)=1;
				meanTime(1:n_series,2)=length(t.data);
			end;

			if exist('resTime','var') == false || keep_old_data == 'n'; % resTime has not been set before
	% 		if exist('resTime','var') == false; % resTime has not been set before
				resTime(1:n_series,1)=1;
				resTime(1:n_series,2)=length(t.data);
			end;

			for k = 1:n_series;
				finish	= 0;
				first	= 1;
				button	= 0;
				if k == 1 || mult_mean == 'y'
					disp('Select new start and end times for the mean times with the left mouse button, press right mouse button to reset, or press enter to accept as is: ');
					while finish ~= 1
						if button == 3 % reset has been pressed
							meanTime(k,1)=1;
							meanTime(k,2)=length(t.data);
							first = 1;
						end

						if first == 0; % skip the first time to get the plots set up first
	% 						disp('Timeseries length: '); disp(max(t.data));
							if button == 48
								meanTime(k,1) = 1;
							else
								meanTime(k,1) = round(x*200);
							end
							set(gca, 'XTick', sort([meanTime(k,1)/200, get(gca, 'XTick')]));

							[x,~,~] = ginput(1);
							meanTime(k,2)= round(x*200);
							set(gca, 'XTick', sort([meanTime(k,2)/200, get(gca, 'XTick')]));
							pause(0.5);

							if meanTime(k,2) < meanTime(k,1)
								meanTime(k,:) = sort(meanTime(k,:));
							end
						end

						% Plotting
						clf;
						tmp1 = unique(reshape(meanTime,[1,numel(meanTime)]));
						tmp2 = unique(reshape(resTime,[1,numel(resTime)]));
						tmp = unique([tmp1 tmp2]);
						subplot(2,2,1);		
							plot(t.data(meanTime(k,1):(meanTime(k,2))),f1.data(meanTime(k,1):(meanTime(k,2)))); 
							grid on;  hold on; title('f1');
							plot(t.data(meanTime(k,1):(meanTime(k,2))),f1.filt(meanTime(k,1):(meanTime(k,2)))); 
							set(gca, 'XTick', sort(tmp/200));
							
						subplot(2,2,2);
							plot(t.data(meanTime(k,1):(meanTime(k,2))),f2.data(meanTime(k,1):(meanTime(k,2))));
							grid on;  hold on; title('f2');
							plot(t.data(meanTime(k,1):(meanTime(k,2))),f2.filt(meanTime(k,1):(meanTime(k,2)))); 
							set(gca, 'XTick', sort(tmp/200));

						subplot(2,2,4);
							plot(t.data(meanTime(k,1):(meanTime(k,2))),f3.data(meanTime(k,1):(meanTime(k,2))));
							grid on;  hold on; title('f3');
							plot(t.data(meanTime(k,1):(meanTime(k,2))),f3.filt(meanTime(k,1):(meanTime(k,2))));
							set(gca, 'XTick', sort(tmp/200));

						subplot(2,2,3);
							plot(t.data(meanTime(k,1):(meanTime(k,2))),speed.data(meanTime(k,1):(meanTime(k,2))));
							grid on; hold on; title('speed');
							plot(t.data(meanTime(k,1):(meanTime(k,2))),speed.filt(meanTime(k,1):(meanTime(k,2)))); 
							set(gca, 'XTick', sort(tmp/200));

						[x,~,button] = ginput(1);
						if size(button) == [0 0]; finish = 1; end;
						if first == 1; first = 0; end;
					end;
				end;
				if mult_mean == 'n'
					meanTime(:,1) = meanTime(1,1);
					meanTime(:,2) = meanTime(1,2);
				end
				p = sprintf('meanTime %d set.',k);
				disp(p);

				finish	= 0;
				first	= 1;
				button	= 0;

				disp('Select new start and end times for the result times with the left mouse button, or press right mouse button to reset, or press enter to accept as is: ');
				while finish ~= 1
					if button == 3 % reset has been pressed
						resTime(k,1)=1;
						resTime(k,2)=length(t.data);
						first = 1;
					end

					if first == 0; % skip the first time to get the plots set up first
	% 					disp('Timeseries length: '); disp(max(t.data));
						if button == 48
							resTime(k,1) = 1;
						else
							resTime(k,1) = round(x*200);
						end
						set(gca, 'XTick', sort([resTime(k,1)/200, get(gca, 'XTick')]));

						[x,~,~] = ginput(1);
						resTime(k,2)= round(x*200);
						set(gca, 'XTick', sort([resTime(k,2)/200, get(gca, 'XTick')]));
						pause(0.5)
						
						if resTime(k,2) < resTime(k,1)
							resTime(k,:) = sort(resTime(k,:));
						end
					end

					% Plotting
					clf;
					tmp1 = unique(reshape(meanTime,[1,numel(meanTime)]));
					tmp2 = unique(reshape(resTime,[1,numel(resTime)]));
					tmp = unique([tmp1 tmp2]);
					subplot(2,2,1);		
						plot(t.data(resTime(k,1):(resTime(k,2))),f1.data(resTime(k,1):(resTime(k,2)))); 
						grid on;  hold on; title('f1');
						plot(t.data(resTime(k,1):(resTime(k,2))),f1.filt(resTime(k,1):(resTime(k,2)))); 
						set(gca, 'XTick', sort(tmp/200));

					subplot(2,2,2);
						plot(t.data(resTime(k,1):(resTime(k,2))),f2.data(resTime(k,1):(resTime(k,2))));
						grid on;  hold on; title('f2');
						plot(t.data(resTime(k,1):(resTime(k,2))),f2.filt(resTime(k,1):(resTime(k,2))));
						set(gca, 'XTick', sort(tmp/200));

					subplot(2,2,4);
						plot(t.data(resTime(k,1):(resTime(k,2))),f3.data(resTime(k,1):(resTime(k,2))));
						grid on;  hold on; title('f3');
						plot(t.data(resTime(k,1):(resTime(k,2))),f3.filt(resTime(k,1):(resTime(k,2))));
						set(gca, 'XTick', sort(tmp/200));

					subplot(2,2,3);
						plot(t.data(resTime(k,1):(resTime(k,2))),speed.data(resTime(k,1):(resTime(k,2))));
						grid on; hold on; title('speed');
						plot(t.data(resTime(k,1):(resTime(k,2))),speed.filt(resTime(k,1):(resTime(k,2))));
						set(gca, 'XTick', sort(tmp/200));

					[x,~,button] = ginput(1);
					if size(button) == [0 0]; finish = 1; end;
					if first == 1; first = 0; end;
				end;
				p = sprintf('resTime %d set.',k);
				disp(p);
			end;

			folderandname = strcat(settings(j).matFolder,mat_files(i,1).name(1:end-4));
			save(folderandname,'t','f1','f2','f3','pos','speed','meanTime','resTime','n_series');%,'-append');

			clear meanTime resTime x y button mult_mean;
		end;
	end;
end;

close all

