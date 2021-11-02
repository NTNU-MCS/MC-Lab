			
function [] = missingData(settings)
for j = 1: length(settings)

	if size(settings(j).var) > 0
		load(strcat(settings(j).folder,'data.mat'));
		
		var = settings(j).var;
		
		folderandname = strcat(settings(j).folder,'data.mat');
		save(folderandname,'var','-append');
		
		p = sprintf('missingData: Added missing data to %s.',strcat(settings(j).folder,'data.mat'));
		disp(p);
	end
end;

p = sprintf('missingData: Finished');
disp(p);








