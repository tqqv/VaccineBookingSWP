package model;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class Notification {
	static String host = "smtp.gmail.com";
	static String port = "587";
	static String username = "trinhquang96vu@gmail.com";
	static String password = "ojczliwiidcoeeje";

	String subject;
	String recipient;
	String message;

	public Notification(String subject, String recipient, String message) {
		this.subject = subject;
		this.recipient = recipient;
		this.message = message;
	}

	public void sendMail() {
		
		Properties props = new Properties();

		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", 587);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

		System.out.println(props);
		Session session = Session.getInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		try {
			System.out.println("check");
			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(username));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
			msg.setSubject(subject);
			msg.setText(message);
			System.out.println("check");
			Transport.send(msg);
			System.out.println("Email sent successfully.");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

	 public static String RandGeneratedStr(int l) {
	        String AlphaNumericStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvxyz0123456789";
	        StringBuilder s = new StringBuilder(l);
	        for (int i = 0; i < l; i++) {
	            int ch = (int) (AlphaNumericStr.length() * Math.random());
	            s.append(AlphaNumericStr.charAt(ch));
	        }
	        return s.toString();
	    }
	
	
	public static void main(String[] args) {
		
		System.out.println("Nhaan kHung vlog");
//		System.out.println(new Notification("TEST", "nomnom15062002@gmail.com","hi").RandGeneratedStr(4));
	}
}
