public class P13 {
    public int romanToInt(String s) {
        if (s.length() == 0) {
            return 0;
        }
        int first = getNumber(s.charAt(0));
        if (s.length() == 1) {
            return first;
        }
        if (s.length() == 2) {
            int second = getNumber(s.charAt(1));
            return first < second ? second - first : first + second;
        }
        int sum = 0;
        for (int i = 0; i < s.length(); i++) {
            int current = getNumber(s.charAt(i));
            if (i == s.length() - 1) {
                return sum + current;
            }
            int next = getNumber(s.charAt(i + 1));
            if (current < next) {
                sum += (next - current);
                i++;
            } else {
                sum += current;
            }
        }
        return sum;
    }

    public int getNumber(char s) {
        switch (s) {
            case 'I':
                return 1;
            case 'V':
                return 5;
            case 'X':
                return 10;
            case 'L':
                return 50;
            case 'C':
                return 100;
            case 'D':
                return 500;
            case 'M':
                return 1000;
            default:
                return 0;
        }

    }
}
