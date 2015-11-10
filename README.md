#Writing UGens example



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