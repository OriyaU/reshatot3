# Makefile for TCP project



all: TCP_Receiver TCP_Sender

tcp-server: TCP_Receiver.c
	gcc -o TCP_Receiver TCP_Receiver.c

tcp-client: TCP_Sender
	gcc -o TCP_Sender TCP_Sender.c

clean:
	rm -f *.o TCP_Receiver TCP_Sender

runs:
	./TCP_Receiver

runc:
	./TCP_Sender

runs-strace:
	strace -f ./TCP_Receiver

runc-strace:
	strace -f ./TCP_Sender