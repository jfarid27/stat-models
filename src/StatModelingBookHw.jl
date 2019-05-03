module StatModelingBookHw
  using Weave;

  export genFiles;

  function genFiles()


    files = [
      "hw1.jmd"
    ];

    println("Building files.");

    outfiles = joinpath(pwd(), "build");

    for file in files
      println("Generating file: " * file);
      weave(joinpath(pwd(), "src", file), out_path=outfiles);
    end
  end

end # module
