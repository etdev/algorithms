public class StringRev {

    public String reverseWords(String s) {
        if (s.equals(" ") || s.equals("")){ return ""; }
        String orig= s;
        s = normalizeSpaces(s);
        if (s.length() == 0 || s.length() == 1){ return s; }
        String[] words = s.split(" ");
        words = swap_words(words);
        return backToString(words);
    }

    private String normalizeSpaces(String s){
        s = s.replaceAll(" +", " ").trim();
        return s;
    }

    private String[] swap_words(String[] words){
        int length = words.length;
        for (int i=0; i<length/2; i++){
            String temp = words[i];
            words[i] = words[length-1-i];
            words[length-1-i] = temp;
        }
        return words;
    }

    private String backToString(String[] words){
        StringBuilder sb = new StringBuilder();
        for (int i=0; i<words.length; i++){
            sb.append(words[i]);
            sb.append(' ');
        }
        String result_s = sb.toString().trim();
        return result_s;
    }

}
