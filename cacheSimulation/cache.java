
public class cache {
	public int associativity;
	public int blockSize;
	public int capacity;
	public int nsets;
	public cacheBlock[][] myCache;
	
	public int nfetch, nread, nwrite;
	public int nfetch_hit, nread_hit, nwrite_hit;
	public int nfetch_miss, nread_miss, nwrite_miss;

	public int currentTime;
	public int strategy;
	public int writeScheme; // 0 means write-allocate, 1 means write-no-allocate
	public int level;
	
	public cache(int A, int B, int C, int strategy, int writeScheme, int level){
		associativity = A;
		blockSize = B;
		capacity = C;
		nfetch = nread = nwrite = 0;
		nfetch_hit = nread_hit = nwrite_hit = 0;
		nfetch_miss = nread_miss = nwrite_miss = 0;
		currentTime = 0;
		this.strategy = strategy;
		this.writeScheme = writeScheme;
		this.level = level;
		
		nsets = capacity / (blockSize * associativity);
		myCache = new cacheBlock[nsets][associativity];
		
		for(int i = 0; i < nsets; i++){
			for(int j = 0; j < associativity; j++){
				myCache[i][j] = new cacheBlock();
			}
		}
	}
	
	
}
