public class DD {
	public DD(){
		
	}
	public static void main(String[] args){
		String s="Ľ��ABC";
		byte[] bytes1=s.getBytes();
		for(byte b:bytes1){
			System.out.println(Integer.toHexString(b));
		}
		//byte[] bytes2=s.getBytes("gbk");
		
	}
}
