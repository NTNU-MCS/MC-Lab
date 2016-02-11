x     = load('x.mat')
y     = load('y.mat')
z     = load('z.mat')
phi   = load('roll.mat')
theta = load('pitch.mat')
psi   = load('yaw.mat')

time = x.ans(1,:);
data = [x.ans(2,:)' y.ans(2,:)' z.ans(2,:)' phi.ans(2,:)' theta.ans(2,:)' psi.ans(2,:)'];

series = timeseries(data,time,'Name','Qualisys Track Manager logging for fixed object 2016-02-11')
