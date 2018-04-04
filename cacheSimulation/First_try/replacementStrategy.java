import java.util.Map;

public interface replacementStrategy {
	public long getIndexForAddress(Map<Long, cacheBlock> cache);
	
	public int getIndexForAddress(cacheBlock[] cache);
}
