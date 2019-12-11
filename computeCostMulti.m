function J = computeCostMulti(X, y, theta)
m = length(y); % number of training examples
J = 0;

% =========================================================================

J1 = (1/(2*m))*sum((X*theta - y).^2);
J = J1;

% =========================================================================

end
