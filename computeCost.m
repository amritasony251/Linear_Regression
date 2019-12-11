function J = computeCost(X, y, theta)
m = length(y); 
J = 0;
h = sum(((X*theta) - y).^2);
J = h*(1/(2*m));
end
