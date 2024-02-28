# Makefile for TCP project

all: receiver sender

receiver: receiver.c
	gcc -o receiver receiver.c

sender: sender.c
	gcc -o sender sender.c

clean:
	rm -f *.o receiver sender
runr:
	./receiver
runs:
	./sender

runs-strace:
	strace -f ./receiver
runr-strace:
	strace -f ./sender



# all: tcp-server tcp-client

# tcp-server: tcp-server.c
# 	gcc -o tcp-server tcp-server.c

# tcp-client: tcp-client.c
# 	gcc -o tcp-client tcp-client.c

# clean:
# 	rm -f *.o tcp-server tcp-client

# runs:
# 	./tcp-server

# runc:
# 	./tcp-client

# runs-strace:
# 	strace -f ./tcp-server

# runc-strace:
# 	strace -f ./tcp-client