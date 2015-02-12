public class LRUCache {
      Node head;
      int capacity;
      int filled;

    public LRUCache(int capacity) {
      head = new Node(new Triple(-1, -1));
      this.capacity = capacity;
      this.filled = 0;
    }

    public int get(int key) {
      Node found = findNodeByKey(key);
      if (found != null) {
        increment();
        found.content.count = 0;
        return found.content.val;
      }
      return -1;
    }

    public void set(int key, int val) {
      Node found = findNodeByKey(key);
      if (found != null) {
        increment();
        found.content.val = val;
        found.content.count = 0;
      }
      else {
        Triple newTriple = new Triple(key, val);
        Node newNode = new Node(newTriple);

        if (filled < capacity) {
          increment();
          add(newNode);
        }
        else {
          removeOldest();
          add(newNode);
        }
      }
    }

    public Node findNodeByKey(int key) {
      Node currentNode = this.head;
      int i=0;
      while (i < filled) {
          System.out.println(" currentNode.content.key: " + currentNode.content.key + ", key: " + key);
        if (currentNode.content.key == key){
          System.out.println(" currentNode.content.key: " + currentNode.content.key + ", key: " + key);
          return currentNode;
        }
        i++;
        currentNode = currentNode.next;
      }
      return null;
    }

    public void increment() {
      int i=0;
      Node currentNode = head;
      while (currentNode.content.val != -1  && i < filled) {
        if (currentNode.content.count != 4) {
          currentNode.content.incrementCount();
          currentNode = currentNode.next;
        }
          i++;
      }
    }

    public void add(Node n) {
      int i=0;
      if (head.content.val == -1) { 
        filled++;
        head.content = n.content;
        head.next = new Node(new Triple(-1, -1));
        return;
      }
      Node currentNode = head;
      while ( currentNode.next.content.val != -1) {
        currentNode = currentNode.next;
      }
      filled++;
      currentNode.next = n;
      currentNode = currentNode.next;
      currentNode.next = new Node(new Triple(-1, -1));
    }

    public Node removeOldest() {
      if (head.content.val == 4) { head = head.next; }
      Node currentNode = head;
      Node nextNode = head.next;
      int i = 0;
      while (nextNode.content.val < 4 && i <= filled) {
        currentNode = nextNode;
        nextNode = nextNode.next;
        i++;
      }
      currentNode.next = nextNode.next;
      nextNode.next = null;
      filled--;
      return nextNode;
    }

    public class Node {
          public Node next;
          public Triple content;

        public Node(Triple _content) {
          this.content = _content;
          this.next = null;
        }
    }

    public class Triple {
        public int key;
        public int val;
        public int count;

        public Triple(int _key, int _val) {
          this.key = _key;
          this.val = _val;
          this.count = 0;
        }

        public void updateVal(int _val) {
          this.val = _val;
          this.count++;
        }

        public void incrementCount() {
          this.count++;
        }

        public String toString() {
          return "(" + key + "/" + val + "/" + count + ")";
        }
    }

    public String toString() {
      Node currentNode = head;
      String returnStr = "[";
      int i=0;
      while( i < filled ) {
        returnStr += currentNode.content + ", ";
        currentNode = currentNode.next;
        i++;
      }
      returnStr += "]";
      return returnStr;
    }
}
