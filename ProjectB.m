%% Reading Data
text_file = 'Push-Pull Converter - no sine input new.txt';
% text_file = 'Push-Pull Converter - additional sine signal 1 Hz.txt';
% text_file = 'Push-Pull Converter - additional sine signal 50 Hz.txt';
% text_file = 'Push-Pull Converter - additional sine signal 100 Hz.txt';
% text_file = 'Push-Pull Converter - conducter 10uF.txt';
% text_file = 'Push-Pull Converter - conducter 1000uF.txt';
data = readtable(text_file, 'VariableNamingRule', 'preserve'); % Replace with your file name
disp(data.Properties.VariableNames);

%% Setting Variables
time = data{:, 1};       % First column (assumed to be time)
voltage = data{:, 2};    % Second column (assumed to be voltage)
current = data{:, 3};    % Third column (assumed to be current)

%% Verify that the data is valid
plot(time, voltage);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('LTSpice Output Data');

%% Prepare Data for Simulink
voltage_ts = timeseries(voltage, time); % Voltage time-series
current_ts = timeseries(current, time); % Current time-series (if applicable)
save('ltspice_data.mat', 'voltage_ts', 'current_ts');
