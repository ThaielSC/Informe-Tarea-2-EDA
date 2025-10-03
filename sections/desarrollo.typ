#import "../config.typ": ansi-render
= Desarrollo

== Nodo

```cpp
class Node {
   private:
     int data;
     Node *ptrNext;

   public:
     Node();
     Node(int, Node *next = nullptr);
     void setData(int value);
     void setNext(Node *);
     int getData();
     Node *getNext();
     void print();
     virtual ~Node();
};
```


== Lista Enlazada

```cpp
class LinkedList {
private:
  Node *head;
  Node *tail;

public:
  LinkedList();
  Node *getHead();
  void insertFirst(int);
  void insertLast(int);
  void removeFirst();
  void removeLast();
  void remove(int);
  void removeAll();
  Node *find(int);
  void print();
  virtual ~LinkedList();
};
```
== Radix Sort
== Quick Sort
== Merge Sort

== Compilación y Ejecución
