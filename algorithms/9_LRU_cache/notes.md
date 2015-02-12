###Problem
Design and implement a data structure for Least Recently Used (LRU) cache. It should support the following operations: ``get`` and ``set``.

``get(key)`` - Get the value (always positive) of the key if it exists in the
cache; otherwise return -1.

``set(key, value)`` - Set or insert the value if the key is not already present.
When the cache reaches its capacity, it should invalidate the least recently
used item before inserting a new item.

###Thoughts
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
* For set operations:
  * If an element exists with that key, replace the element and set it as the
    most recently accessed element
  * If no element exists with that key, remove the least recently used element,
    add the new element as the most recently used
* I need to keep track of the least recently used key somehow.
* I don't want to use an array and shuffle all the elements around each time I
  get or set an element's value.
* I could use a counter to keep track of how recently used each item is.
  * i.e. if there are five elements, the least recently used one is 4, the most
    recently used one is 0, and when you replace an item all you have to do is
    increment the count for the other items and set the new/changed count to 0.
  * e.g. [0/0(0), */*, */*, */*, */*] -> [1/1(0), 0/0(1), */* ...] -> [2/2(0),
    1/1(1), 0/0(2), ...] etc.
* I think a linked list would be a good fit for this problem.
* I could define a "pair" data type (since I need to store a recent usage
  counter value and an actual value for each key)

###Basic code

    public class LRUCache {
        
        public LRUCache(int capacity) {
            
        }
        
        public int get(int key) {
            
        }
        
        public void set(int key, int value) {
            
        }
        
        public class Node {
            public Node(Pair val, )
        }
        
        public class Pair {
            int count;
            int val;
        }
    }

