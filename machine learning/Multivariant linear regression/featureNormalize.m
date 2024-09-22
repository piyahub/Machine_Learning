function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% Initialize variables
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% Compute the mean and standard deviation for each feature
mu = mean(X);
sigma = std(X);

% Normalize each feature
X_norm = (X - mu) ./ sigma;

% Print the mean and standard deviation
disp('Mean values for each feature:');
disp(mu);

disp('Standard deviation values for each feature:');
disp(sigma);

% Print the normalized features (optional, for checking)
disp('First few rows of the normalized features:');
disp(X_norm(1:min(5, size(X_norm, 1)), :));  % Print the first 5 rows or fewer if less than 5

end