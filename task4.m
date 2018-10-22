%% Task 4
C_vector = zeros(1,100);
C_vector(1:2) = 2e19;
D = 1.69e-10; %cmhr^-1
dt = 0.2e-9;
dx2 = 3e-10;
k = D*dt/(dx2^2);
hold on

for j = 1:5
    C_vector(1) = C_vector(1) + k*((max(C_vector)) - 2*C_vector(1) + C_vector(2));
    for i = 2:length(C_vector)-1  % start at 2 because there is no value left of the first element
        C_vector(i) = C_vector(i) + k*(C_vector(i-1) - 2*C_vector(i) + C_vector(i+1));
    end
    plot(C_vector);
    pause(5)
end