import java.util.Arrays;
import java.util.List;

public class directMappedCache{
	int blockSize;
	int capacity;
	int nsets;
	cacheBlock[] myCache;
	boolean writeMissAllocate; 
	
	int nhitRead;
	int nmissRead;
	int nhitWrite;
	int nmissWrite;
	
	public directMappedCache(int B, int C, boolean writeMissAllocate){
		this.blockSize = B;
		this.capacity = C;
		this.nsets = capacity / blockSize;
		this.writeMissAllocate = writeMissAllocate;
		this.nhitRead = 0;
		this.nmissRead = 0;
		this.nhitWrite = 0;
		this.nmissWrite = 0;
		setupMemory();		
	}
	
	public void setupMemory(){
		this.myCache = new cacheBlock[nsets];
		for(int i = 0; i < nsets; i++){
			myCache[i] = new cacheBlock();
		}
	}
	
//	public List read(long address){
//		long a = address / blockSize;		
//		long index =  a % nsets;
//		long tag = a / nsets;
//		boolean evict = false;
//		
//		cacheBlock data = myCache[(int) index];
//		
//		if(! data.valid || data.tag != tag){
//			if(data.valid && data.dirty){
//				
//			}
//			data.valid = true;
//			data.tag = tag;
//			nmissRead++;
//		}else{
//			nhitRead++;
//		}
//		
//		
//	}
	
//	public void write(long address){
//		long a = address / blockSize;
//		long index =  a % nsets;
//		long tag = a / nsets;
//		
//		cacheBlock data = myCache[(int) index];
//		
//		if(data.tag == tag){
//			nhitWrite++;
//		}else{
//			if(writeMissAllocate){
//				read(address);
//				nmissWrite++;
//			}
//		}
//	}
	
	public static void main(String[] args) {
        cacheBlock[] a = new cacheBlock[1];
        a[0] = new cacheBlock(true, false, 1);
        cacheBlock b = a[0];
        b.tag = 5;
        System.out.print(a[0].tag);
    }
	
}
