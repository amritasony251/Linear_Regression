function [X_norm, mu, sigma] = featureNormalize(X) 
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

mu1 = mean(X(:,1));
sigma1 = std(X(:,1));

for i = 2:size(X, 2)  
  mu1 = [mu1 ,mean(X(:,i))];
  sigma1 = [sigma1 ,std(X(:,i))];
end  

mu = mu1;
sigma = sigma1;

for j = 1:size(X,2)  
  for i = 1:size(X,1)
    X(i,j) = (X(i,j) - mu(j))./sigma(j);
  end
end  
X_norm = X;

end
