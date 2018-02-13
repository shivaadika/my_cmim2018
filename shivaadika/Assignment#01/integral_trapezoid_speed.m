function result = integral_trapezoid_speed( fun, low_limit, up_limit, no_splits )

h = (up_limit - low_limit)/no_splits;

F = fun(low_limit:h:up_limit);

result = h .* ( ( F(1) + F(end) ).*0.5 + sum( F(2:end-1) ) );
    
end
   


