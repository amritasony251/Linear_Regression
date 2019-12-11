function [theta] = normalEqn(X, y)

theta = zeros(size(X, 2), 1);

theta1 = pinv((X')*X)*(X')*y;

theta = theta1;
end
