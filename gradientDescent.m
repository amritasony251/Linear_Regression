function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
m = length(y); 
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    p = (X')*(X*theta-y);
    theta = theta - (1/m)*alpha*p; 
    J_history(iter) = computeCost(X, y, theta);

end

end
