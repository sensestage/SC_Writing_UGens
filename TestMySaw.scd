// test on the regular server:

s.boot;
{ MySaw.ar( 880, 0 )*0.1 }.play;


// test on a debug server (started from a debugger in your programming environment with the command:
// /usr/local/bin/scsynth -u 57115 -a 128 -b 1026 -R 0

~debugServer = Server.new(\debug, NetAddr("127.0.0.1", 57115 ) );
~debugServer.initTree;
~debugServer.makeGui;

{ MySaw.ar( 880, 0 )*0.1 }.play( ~debugServer );
