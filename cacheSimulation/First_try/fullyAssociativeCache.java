import java.util.HashMap;
import java.util.Map;

public class fullyAssociativeCache {
	int associativity;
	int blockSize;
	int capacity;
	int size;
	Map<Long, cacheBlock> myCache;
	replacementStrategy strategy;
	
	int nhit;
	int nmiss;
	int currentTime;
	
	public fullyAssociativeCache(int B, int C, replacementStrategy strategy){
		this.blockSize = B;
		this.capacity = C;
		this.associativity = capacity / blockSize;	
		this.strategy = strategy;
		this.nhit = 0;
		this.nmiss = 0;
		this.currentTime = 0;
		setupMemory();
	}
	
	public void setupMemory(){
		this.size = 0;
		this.myCache = new HashMap<Long, cacheBlock>();
	}
	
	public void read(long address){
		long a = address / blockSize;
		cacheBlock data = new cacheBlock(true, false, a);
		data.lastAccessTime = currentTime;
		
		if(myCache.containsKey(a) && myCache.get(a).valid){
			nhit++;
			myCache.get(a).lastAccessTime = currentTime;
		}else{
			if(size >= associativity){
				long blockTag = strategy.getIndexForAddress(myCache);
				myCache.remove(blockTag);
			}
			nmiss++;
			myCache.put(a, data);
		}
		
		currentTime++;
	}
}
