function [ final ] = CubicSpline( x, y, h )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
final = zeros(length(y));
final = y(1);
for i=2:length(y)
    for j=2:length(y)
       final(i+j-2) = (y(j)-y(j-1))/(x((j-1)+(i-1))-(x(j-1)));
    end
    y = final(i:end);
end
final = [final y];
y1 = final(1);
for i=2:length(final)-1
   temp = final(i);
   for j=1:i-1
      temp = temp .* (h-x(j));
   end
   y1 = y1 + temp;
end
plot(h,y1);
end