function [root, i] = bisectionMethod(f, a, b, tolerance)
%Bisection Method
%   Given an interval [a,b], if f(x)=0 at some point along that interval
%   then x is returned as 'root'. The # of iterations required to reach
%   this is also returned as 'i';

root = 0;
i = 0;

while(abs(f(root)) > tolerance)
    i = i + 1;
    midpt = (a + b) / 2;
    
    %Root is within [a, midpt]
    if(f(a) * f(midpt) < 0)
        b = midpt;
    %Root is within [midpt, b]
    else 
        a = midpt;
    end
    
    root = midpt;
end
fprintf('The Bisection Method has yielded a root of (%f, %f) in %d tries\n', root, vpa(f(root)), i)
end

