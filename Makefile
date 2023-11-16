musicStoreAPI: musicStoreAPI.o Genre.o Artist.o Album.o Record.o CompactDisc.o GenericAPI.o 
	g++ -lpthread musicStoreAPI.o Genre.o Artist.o Album.o Record.o CompactDisc.o GenericAPI.o -o musicStoreAPI

musicStoreAPI.o: musicStoreAPI.cpp CompactDisc.h Record.h Artist.h Genre.h GenericAPI.h persistence.h
	g++ -Wall -c musicStoreAPI.cpp 

Record.o: Record.cpp Record.h
	g++ -Wall -c Record.cpp 

CompactDisc.o: CompactDisc.cpp CompactDisc.h
	g++ -Wall -c CompactDisc.cpp 

Album.o: Album.cpp Album.h
	g++ -Wall -c Album.cpp 

Arist.o: Artist.cpp Artist.h
	g++ -Wall -c Artist.cpp 

Genre.o: Genre.cpp Genre.h
	g++ -Wall -c Genre.cpp 

GenericAPI.o: GenericAPI.cpp GenericAPI.h Genre.h Artist.h Record.h
	g++ -Wall -c GenericAPI.cpp 

clean:
	rm -f *.o musicStoreAPI