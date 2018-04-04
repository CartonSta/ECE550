import java.util.Map;

public class LRUReplacementStrategy implements replacementStrategy{

	@Override
	public long getIndexForAddress(Map<Long, cacheBlock> cache) {
		// TODO Auto-generated method stub
		int LRU = Integer.MAX_VALUE;
		long blockTag = 0;
		
		for(Long key : cache.keySet()){
			cacheBlock data = cache.get(key);
			if(data.valid && data.lastAccessTime < LRU){
				LRU = data.lastAccessTime;
				blockTag = data.tag;
			}
		}
		
		return blockTag;
	}
	
	public int getIndexForAddress(cacheBlock[] cache) {
		// TODO Auto-generated method stub
		int LRU = Integer.MAX_VALUE;
		int index = 0;
		
		for(int i = 0; i < cache.length; i++){
			cacheBlock data = cache[i];
			if(data.valid && data.lastAccessTime < LRU){
				LRU = data.lastAccessTime;
				index = i;
			}
		}
		
		return index;
	}
	
}
