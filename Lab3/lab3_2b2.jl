function writefile(n)

        f = open("data1.txt","w")
        println(f,rand(n))
        close (f);
end

function readfile(n)
     writefile(n)
    @elapsed x = readdlm("data1.txt")
end

