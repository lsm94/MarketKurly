package util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;

public class Utility {
	public static String encrypt(String source) {
		String password = "";
		
		try {
			MessageDigest messagedigest = MessageDigest.getInstance("SHA-256");
			messagedigest.update(source.getBytes());
			byte[] digest = messagedigest.digest();
		
			for(int i = 0 ; i<digest.length; i++) {
				password+=Integer.toHexString(digest[i]&0xff);
			}
			
		}catch(NoSuchAlgorithmException e) {
			System.out.println("[에러]잘못된 암호화 알고리즘을 사용 하였습니다.");
		}
		return password;
	}
	
	
	public static String stripTag(String source) {
		
		Pattern htmlTag=Pattern.compile("\\<.*?\\>");
		source=htmlTag.matcher(source).replaceAll("");
		return source;
	}
		
	public static String escapeTag(String source) {
		return source.replace("<", "&lt;").replace(">", "&gt;");
	}
}
