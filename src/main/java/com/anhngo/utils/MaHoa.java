package com.anhngo.utils;

public class MaHoa {
	public static String maskEmail(String email) {
		int atIndex = email.indexOf("@");
		if (atIndex <= 1) {
			return email; // Không thể mã hóa email nếu có ít hơn 2 ký tự trước '@'
		}

		StringBuilder maskedEmail = new StringBuilder();
		maskedEmail.append(email.charAt(0));
		for (int i = 1; i < atIndex; i++) {
			maskedEmail.append('*');
		}
		maskedEmail.append(email.substring(atIndex));
		return maskedEmail.toString();
	}

	public static String maskPassword(String password) {
		StringBuilder maskedPassword = new StringBuilder();
		for (int i = 0; i < password.length(); i++) {
			maskedPassword.append('*');
		}
		return maskedPassword.toString();
	}

}
