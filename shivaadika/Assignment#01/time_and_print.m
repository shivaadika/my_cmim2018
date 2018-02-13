function t = time_and_print(f_handler, exact) 
t = timeit( f_handler ); 
disp(['Time for naive solution and std input: ', num2str(t), ' error: ',... 
            num2str(f_handler() - exact)]); 

end 