package dal;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

public class Encrypt {
	static String SECRET_KEY_CCCD = "HOCTAPLAODONGGGG";
	static String SECRET_KEY_PASS = "HOCTAPLAODONGGGGGGGG";
	static String SECRET_KEY_HI = "HOCTAPLAODONG";
	static SecretKeySpec skeySpec = new SecretKeySpec(SECRET_KEY_CCCD.getBytes(), "AES");

	public static String encryptCCCDTo(String identifi) throws NoSuchAlgorithmException, NoSuchPaddingException,
			InvalidKeyException, IllegalBlockSizeException, BadPaddingException {

		SecretKeySpec skeySpec = new SecretKeySpec(SECRET_KEY_CCCD.getBytes(), "AES");
		Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
		cipher.init(Cipher.ENCRYPT_MODE, skeySpec);
		byte[] byteEncrypted = cipher.doFinal(identifi.getBytes());
		String encrypted = Base64.getEncoder().encodeToString(byteEncrypted);
		return encrypted;
	}

	public static String decryptCCCDTo(String encrypted) throws NoSuchAlgorithmException, NoSuchPaddingException,
			InvalidKeyException, IllegalBlockSizeException, BadPaddingException {

		SecretKeySpec skeySpec = new SecretKeySpec(SECRET_KEY_CCCD.getBytes(), "AES");
		Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
		cipher.init(Cipher.DECRYPT_MODE, skeySpec);
		byte[] byteEncrypted = Base64.getDecoder().decode(encrypted);
		byte[] byteDecrypted = cipher.doFinal(byteEncrypted);
		String decrypted = new String(byteDecrypted);

		return decrypted;
	}

//	public static String encryptPassTo(String pass) throws NoSuchAlgorithmException, NoSuchPaddingException,
//			InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
//
//		SecretKeySpec skeySpec = new SecretKeySpec(SECRET_KEY_PASS.getBytes(), "AES");
//		Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
//		cipher.init(Cipher.ENCRYPT_MODE, skeySpec);
//		byte[] byteEncrypted = cipher.doFinal(pass.getBytes());
//		String encrypted = Base64.getEncoder().encodeToString(byteEncrypted);
//		return encrypted;
//	}
//
//	public static String decryptPassTo(String encrypted) throws NoSuchAlgorithmException, NoSuchPaddingException,
//			InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
//
//		SecretKeySpec skeySpec = new SecretKeySpec(SECRET_KEY_CCCD.getBytes(), "AES");
//		Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
//		cipher.init(Cipher.DECRYPT_MODE, skeySpec);
//		byte[] byteEncrypted = Base64.getDecoder().decode(encrypted);
//		byte[] byteDecrypted = cipher.doFinal(byteEncrypted);
//		String decrypted = new String(byteDecrypted);
//
//		return decrypted;
//	}
//
//	public static String encryptHITo(String HI) throws NoSuchAlgorithmException, NoSuchPaddingException,
//			InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
//
//		SecretKeySpec skeySpec = new SecretKeySpec(SECRET_KEY_HI.getBytes(), "AES");
//		Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
//		cipher.init(Cipher.ENCRYPT_MODE, skeySpec);
//		byte[] byteEncrypted = cipher.doFinal(HI.getBytes());
//		String encrypted = Base64.getEncoder().encodeToString(byteEncrypted);
//		return encrypted;
//	}
//
//	public static String decryptHITo(String encrypted) throws NoSuchAlgorithmException, NoSuchPaddingException,
//			InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
//
//		SecretKeySpec skeySpec = new SecretKeySpec(SECRET_KEY_HI.getBytes(), "AES");
//		Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
//		cipher.init(Cipher.DECRYPT_MODE, skeySpec);
//		byte[] byteEncrypted = Base64.getDecoder().decode(encrypted);
//		byte[] byteDecrypted = cipher.doFinal(byteEncrypted);
//		String decrypted = new String(byteDecrypted);
//
//		return decrypted;
//	}

//	
	public static void main(String[] args) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException,
			IllegalBlockSizeException, BadPaddingException {

		String encryptCCCD = "S8wS6JkVs4kwtN/dyEdsCg==";

		//String encryptedCCCD = encryptCCCDTo(originalCCCD);

		String decryptedCCCD = decryptCCCDTo("c535e01a64f5a08dd897ff81b98a9db6");
		


		//System.out.println("encrypted cccd text: " + encryptedCCCD);
		System.out.println("decrypted cccd text: " + decryptedCCCD);

//		System.out.println("original pass test: " + originalPASS);
//		System.out.println("encrypted pass text: " + encryptedPASS);
//		System.out.println("decrypted pass text: " + decryptedPASS);
//
//		System.out.println("original HI test: " + originalHI);
//		System.out.println("encrypted HI text: " + encryptedHI);
//		System.out.println("decrypted HI text: " + decryptedHI);

		
	}
}