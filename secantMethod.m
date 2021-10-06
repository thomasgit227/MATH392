function [root, i] = secantMethod(f, p0, p1, tolerance)
% Secant Method
%   Given an interval [a,b], if f(x)=0 at some point along that interval
%   then x is returned as 'root' . The # of iterations required to reach
%   this is also returned as 'i'.

root = 0;
i = 0;

while(abs(p0 - p1) > tolerance)
    pn = p1 - (f(p1) * (p1 - p0))/(f(p1) - f(p0));
    p0 = p1;
    p1 = pn;
    i = i + 1;
    root = p1;
end
    fprintf('The Secant Method has yielded a root of (% f, % f) in % d tries \n', root, vpa(f(root)), i)
end