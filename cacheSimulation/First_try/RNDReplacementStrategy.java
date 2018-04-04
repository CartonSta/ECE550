import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class RNDReplacementStrategy implements replacementStrategy{

	@Override
	public long getIndexForAddress(Map<Long, cacheBlock> cache) {
		// TODO Auto-generated method stub
		List<Long> key = new ArrayList<Long>(cache.keySet());
		int size = key.size();
		int random = (int) (Math.random() * size);
		long blockTag = cache.get(key.get(random)).tag;
		return blockTag;
	}

	public int getIndexForAddress(cacheBlock[] cache) {
		// TODO Auto-generated method stub
		int size = cache.length;
		int random = (int) (Math.random() * size);
		return random;
	}
}
