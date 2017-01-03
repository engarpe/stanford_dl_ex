function [f,g] = linear_regression(theta, X,y)
  %
  % Arguments:
  %   theta - A vector containing the parameter values to optimize.
  %   X - The examples stored in a matrix.
  %       X(i,j) is the i'th coordinate of the j'th example.
  %   y - The target value for each example.  y(j) is the target for example j.
  %
  
  m=size(X,2);
  n=size(X,1);

  f=0;
  g=zeros(size(theta));

  %
  % TODO:  Compute the linear regression objective by looping over the examples in X.
  %        Store the objective function value in 'f'.
  %
  % TODO:  Compute the gradient of the objective with respect to theta by looping over
  %        the examples in X and adding up the gradient for each example.  Store the
  %        computed gradient in 'g'.
  
%%% YOUR CODE HERE %%%

for i = 1 : m
  f = f + (((theta' * X(:,i)) -  y(i)) ** 2) / 2;
  g = g + ( X(:,i) * ((theta' * X(:,i)) - y(i)));
end


%% Own implemented code to check gradients
%epsilon = 10^-4
%e_check=zeros(size(theta));

%for i = 1 : n
%  e_vec=zeros(size(theta));
%  e_vec(i) = 1
%  e_check(i) = ((sum(((theta+epsilon*e_vec)' * X - y).**2))/2 - (sum(((theta-epsilon*e_vec)' * X - y).**2))/2)/(2*epsilon)
%end