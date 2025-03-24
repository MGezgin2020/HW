n = int(input())
s = set(map(int, input().split()))

N = int(input())
for _ in range(N):
    process = input().split()
    command = process[0]

    if command == "pop":
        s.pop()  # Pop an arbitrary element from the set
    elif command == "remove":
        element = int(process[1])  # Get the element to remove
        if element in s:
            s.remove(element)  # Remove the element if it exists
    elif command == "discard":
        element = int(process[1])  # Get the element to discard
        s.discard(element)  # Discard the element (does nothing if not found)

# Output the sum of the remaining elements in the set
print(sum(s))

