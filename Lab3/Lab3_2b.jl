
function write(n)
        tic();
        f = open("data.txt","w")
        println(f,rand(n))
        close (f);
        toc();
end

