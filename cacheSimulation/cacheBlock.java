
public class cacheBlock {
	boolean valid;
	boolean dirty;
	long tag;
	int lastAccessTime;
	
	public cacheBlock() {
		this.valid = false;
		this.dirty = false;
		this.lastAccessTime = Integer.MIN_VALUE;
	}
	
}

