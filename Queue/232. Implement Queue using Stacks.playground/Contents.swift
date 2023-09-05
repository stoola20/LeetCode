class MyQueue {

    var queue: [Int]

    init() {
        self.queue = []
    }
    
    // Pushes element x to the back of the queue.
    func push(_ x: Int) {
        queue.append(x)
    }

    // Removes the element from the front of the queue and returns it.
    func pop() -> Int {
        queue.removeFirst()
    }

    // Returns the element at the front of the queue.
    func peek() -> Int {
        queue.first ?? 0
    }

    // Returns true if the queue is empty, false otherwise.
    func empty() -> Bool {
        queue.isEmpty
    }
}

