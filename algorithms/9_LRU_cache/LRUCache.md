###Problem
**Attempt #3**
Design and implement a data structure for Least Recently Used (LRU) cache. It
should support the following operations: ``get`` and ``set``.

``get(key)`` - Get the value (always positive) of the key if it exists in the
cache; otherwise return -1.

``set(key, value)`` - Set or insert the value if the key is not already present.
When the cache reaches its capacity, it should invalidate the least recently
used item before inserting a new item.

###Thoughts
* This time I'm just going to admit I don't know how to effectively solve this
  problem and ask Google what some good approaches are.
* Apparently it's possible for the set() and get() operations to be O(1) if we
  use a hash map and a doubly linked list, so that's what I'm going to do.
* We need to keep track of three pieces of information:
  * Key (What to look up in the hash map)
  * Value (What is stored in the hash map)
  * Count (Measure of how recently an element has been accessed) (I think I can
    symbolize this with position in the Doubly Linked List)
* The first thing I'm going to do is implement the Doubly Linked List
  independently, since trying to do too much at once is what messed me up on
Attempt #2.  This time I'm going to break it up a bit more and make 100% sure
each piece works before putting it together.
* Basic flow:
  * ``LRUCache lru = new LRUCache(5); ``
    * ``[ */* , */* , */* , */* , */* ]``
  * ``set(0, 0);``
    * ``[0/0, */*, */*, */*, */*]
  * ``set(1, 1); set(2, 2); set(3, 3); set(4, 4);``
    * ``[4/4, 3/3, 2/2, 1/1, 0/0]``
  * ``set(5/5);``
    * ``[5/5, 4/4, 3/3, 2/2, 1/1]``
  * ``get(3);``
    * ``[3/3, 5/5, 4/4, 2/2, 1/1]``
  * ``get(1);``
    * ``[1/1, 3/3, 5/5, 4/4, 2/2]``
  * ``set(1,500);``
    * ``[1/500, 3/3, 5/5, 4/4, 2/2]``
  * ``set(6, 6);``
    * ``[ 6/6, 1/500, 3/3, 5/5, 4/4]``

###Code Skeleton
LRUCache
    public class LRUCache {

        public LRUCache(int capacity) {

        }

        public int get(int key) {

        }

        public void set(int key, int value) {

        }
    }

DoublyLinkedList

    public class DoublyLinkedList {

      Node head;
      Node tail;
      int capacity;
      int filled;

      public DoublyLinkedList(int _capacity) {
      }

      public void add(Node n) {
      }

      public class Node {
        int val;
        Node prev;
        Node next;

        public Node(int _val, Node _prev, Node _next) {
        }
      }
    }

###Thoughts/Possible improvements
* Should I use the integer value or the Node object itself in add(), remove()
  etc. in the DoublyLinkedList class?
  * Right now I'm using node for remove but val for add, which seems ugly.
* I should put the Node class in its own file so I don't need to keep prefacing
  it with DoublyLinkedList.
  null)
* Do something about the ``dll.remove(dll.head.next)`` line
* I'm not sure what happened in the remove method (why oldNode.prev = null; and
  oldNode.next = null; caused problems)
