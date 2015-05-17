%% Modeling Airbag Performace for Airdrop Applications


%% Utility Functions

myprint = @(s,x,u) disp(sprintf('%s = %8.2f [%s]',s,x,u));


%% Data from Calvin Lee, 1992, and from RFI W911QY-15-EDACAD

% Descent velocity for U.S. Army parachutes is 28 ft/sec

v = 28;                  % ft/sec
v = 28*0.3048;           % convert to meters/sec

% Mass loading 6,000 to 18,000 lbs for up to 12 airbags. 

m = 1500/2.2;            % kg

% Airbag dimension

h = 36*2.54/100;         % meters
A = pi*(18*2.54/100)^2;  % m^2

%% Energy to be dissipated

KE = m*v^2/2;            % Joules kg*m/s^2
myprint('Kinetic Energy',KE,'J')

%% Average force

f = KE/h;                % Newtons
p = f/A;                 % average pressure in Pascals
accel = f/m;             % acceleration
tf = v/accel;            % duration

myprint('   Average Force',f,'Newtons');
myprint('Average Pressure',p,'Pascals');
myprint('        Duration',tf,'secs');

%% Idealized Landing Scenario


