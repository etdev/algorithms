public class LRUCache {
      Node head;
      int capacity;
      int filled;

    public LRUCache(int capacity) {
      head = new Node(null);
      this.capacity = capacity;
      this.filled = 0;
    }

    public int get(int key) {
      Node found = findNodeByKey(key);
      if (found != null) {
        increment();
        found.content.count = 0;
      }
      return found.content.val;
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
      while (currentNode != null && i < filled) {
        if (currentNode.content.key == key){
          return currentNode;
        }
        i++;
      }
      return null;
    }

    public void increment() {
      int i=0;
      Node currentNode = head;
      while (currentNode != null && i < filled) {
        currentNode.content.incrementCount();
        i++;
      }
    }

    public void add(Node n) {
      int i=0;
      Node currentNode = head;
      while (currentNode.next != null && i < filled) {
        currentNode = currentNode.next;
      }
      currentNode.next = n;
    }

    public Node removeOldest() {
      if (head.content.val == 4) { head = head.next; }
      Node currentNode = head;
      Node nextNode = head.next;
      while (nextNode.content.val != 4) {
        currentNode = nextNode;
        nextNode = nextNode.next;
      }
      currentNode.next = nextNode.next;
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
    }
}
