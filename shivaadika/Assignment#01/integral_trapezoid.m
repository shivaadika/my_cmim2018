function result = integral_trapezoid( fun, low_limit, up_limit, no_splits )

h = (up_limit - low_limit)/no_splits;

result = 0;

for i = 1:no_splits
    
    result = result + 0.5*h*(fun(low_limit + (i-1)*h) + ...
        fun(low_limit + i*h));
    
end
   

end

