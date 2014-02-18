function serializefile(n)

        f = open("data3.txt","w")
        serialize(f,rand(n))
        close (f);
end
