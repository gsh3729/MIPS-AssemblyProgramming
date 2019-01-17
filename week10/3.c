#include <stdio.h>
#include <stdlib.h>
    int tag[4][2];
    int mru[4] = {1,1,1,1};

	void mruUpdate(int i,int j)
	{
		mru[i]=j;
	}
      int main( ){
       int addr;
       int hits, accesses,i,j,index;
       FILE *fp;
       fp = fopen("trace.txt", "r");
       hits = 0;
       accesses = 0;
       while (fscanf(fp, "%x", &addr) > 0) {
	accesses += 1;
        printf("%3d: 0x%08x ", accesses, addr);
	index = (addr >> 2) & 7;
	if(index<4)
	{
		i=index;
		j=0;
	}
	else
	{
		i=index-4;
		j=1;
	}
	if(tag[i][0]==addr)
	{
		hits += 1;
           	printf("Hit%d\n ", index);
		mruUpdate(i,0);
		
	}
	else if(tag[i][1]==addr)
	{
		hits += 1;
           	printf("Hit%d \n ", index);
		mruUpdate(i,1);
		
	}
	else
	{
		printf("Miss \n");
    	j= mru[i];
    	tag[i][abs(j-1)]=addr;
    	mruUpdate(i,abs(j-1));

	}
       }
	printf("Hits = %d, Accesses = %d, Hit ratio = %f\n", hits,accesses, ((float)hits)/accesses);
        fclose(fp);
    }