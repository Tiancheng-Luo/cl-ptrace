# because util.c is included in attach-to.c it will be compiled and linked just by
# compiling attack-to.c


ptrace-test: ptrace-test.c
build:
	gcc -o bin/ptrace-test ptrace-test.c
	gcc -o bin/return-x return-x.c
	gcc -o bin/attach-to attach-to.c
	gcc -o bin/spam spam.c
	gcc -o bin/dspm  dspm.c

	# creating own shared libraries(!!!):
	# fPIC : "position independent code"
	gcc -shared -fPIC -g test.c -o bin/libtest.so

run-ptrace-test:
	./bin/ptrace-test ./bin/return-x

run-return-x:
	./bin/return-x

run-attach-to:
	./bin/attach-to

run-spam:
	./bin/spam

# run-test: shouldn't make sense to run *.so files!
# 	./bin/test.so
