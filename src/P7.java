//https://leetcode.com/problems/reverse-integer/

public class P7 {
    public static int reverse(int x) {
        StringBuilder reverse = new StringBuilder(x < 0 ? "-" : "");
        String absolute = String.valueOf(Math.abs(x));
        for (int i = absolute.length() - 1; i >= 0; i--) {
            char current = absolute.charAt(i);
            if (current != 0) {
                reverse.append(current);
            }
        }
        try {
            return Integer.parseInt(reverse.toString());
        } catch (Exception e) {
            return 0;
        }
    }
}
