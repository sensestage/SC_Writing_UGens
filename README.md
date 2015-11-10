#Writing UGens example

This repository has the files for the helpfile documentation for SuperCollider on *Writing Unit Generators*. Check that helpfile for general information on how to write UGens.

A small modification was made to the ```CMakeLists.txt``` to make it all work nicely.

#Building

Make a build directory:

    mkdir build

Pass in where the SuperCollider headers are installed, e.g. invoke cmake with:

    cmake -DSC_PATH=/usr/local/include/SuperCollider ..

Then build it

    make

#Installing

install to home directory with:
  
    mkdir ~/.local/share/SuperCollider/Extensions/myugens
    cp MySaw.so ~/.local/share/SuperCollider/Extensions/myugens/
    cp ../MySaw.sc ~/.local/share/SuperCollider/Extensions/myugens/
    
#Testing

See the file ```TestMySaw.scd```

