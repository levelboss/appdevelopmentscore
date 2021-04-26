OBJ = score.o eval.o classify.o getscore.o output.o 
APPNAME = score
$(APPNAME) : $(OBJ)
	gcc -o $(APPNAME) $(OBJ)
%.o : %.c 
	gcc -c -o $@ $<
clean : 
	rm $(OBJ) $(APPNAME)
