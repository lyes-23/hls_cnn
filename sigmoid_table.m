
N = 6;                % Range from -6 to 6
LUT_SIZE = 256;       % Size of the LUT (256 addresses)

sigmoidLUT = zeros(1, LUT_SIZE);
step = 2 * N / (LUT_SIZE - 1);  % Calculate step size

for i = 1:LUT_SIZE
    x = -N + (i - 1) * step;  
    sigmoidLUT(i) = 1.7159 * tanh(0.66666667 * x);  % SIGMOID function
end


fileID = fopen('sigmoidLUT.txt', 'w');  % Open file for writing
if fileID == -1
    error('Failed to open file for writing.');
end

% Write the LUT values into the file
for i = 1:LUT_SIZE
    fprintf(fileID, '%f, ', sigmoidLUT(i));  % Write each value on a new line
end

% Close the file
fclose(fileID);

% Optionally, display a message indicating success
disp('LUT values have been written to "sigmoidLUT.txt".');

% Plot the LUT values for visualization
x_values = linspace(-N, N, LUT_SIZE);  % Generate corresponding x values
plot(x_values, sigmoidLUT);
xlabel('Input Value');
ylabel('Sigmoid Value');
title('Sigmoid LUT from -N to N');
grid on;
