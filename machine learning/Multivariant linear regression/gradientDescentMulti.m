function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    % Compute the hypothesis
    h = X * theta;
    
    % Compute the error
    error = h - y;
    
    % Compute the gradient
    gradient = (X' * error) / m;
    
    % Update theta
    theta = theta - alpha * gradient;
    
    % Save the cost J in every iteration
    J_history(iter) = computeCostMulti(X, y, theta);
end

end

function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Number of training examples
m = length(y);

% Compute the hypothesis
h = X * theta;

% Compute the squared errors
errors = h - y;
squaredErrors = errors .^ 2;

% Compute the cost
J = (1 / (2 * m)) * sum(squaredErrors);
end



