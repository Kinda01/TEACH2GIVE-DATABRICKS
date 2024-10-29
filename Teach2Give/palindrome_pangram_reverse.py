# Function  checking if a word or phrase is a palindrome
def is_palindrome(s):
    # Removing spaces and convert to lowercase for a case-insensitive comparison
    s = s.replace(" ", "").lower()
    return s == s[::-1]

# Function  checking if a string is a pangram
def is_pangram(s):
    alphabet = set("abcdefghijklmnopqrstuvwxyz")
    # Converting to lowercase and form a set of unique characters in the string
    return alphabet.issubset(set(s.lower()))

# Function to reverse the digits of an integer
def reverse_integer(n):
    # Handling negative numbers by converting the integer to a string and reversing it
    sign = -1 if n < 0 else 1
    reversed_n = int(str(abs(n))[::-1]) * sign
    return reversed_n

# Testing the functions
# Palindrome testing
print("Palindrome tests:")
print(is_palindrome("madam"))           # Expected output: True
print(is_palindrome("nurses run"))      # Expected output: True
print(is_palindrome("hello"))           # Expected output: False

# Pangram testing
print("\nPangram tests:")
print(is_pangram("The quick brown fox jumps over the lazy dog"))  # Expected output: True
print(is_pangram("Hello World"))                                  # Expected output: False

# Reversing integer tests
print("\nReverse integer tests:")
print(reverse_integer(500))  # Expected output: 5
print(reverse_integer(-56))  # Expected output: -65
print(reverse_integer(-90))  # Expected output: -9
print(reverse_integer(91))   # Expected output: 19

# Function to capitalize the first letter of each word in the string
def capitalize_words(s):
    # Using the title() method to capitalize each word
    return s.title()

# Testing the function
print(capitalize_words("hi"))                   # Expected output: "Hi"
print(capitalize_words("i love programming"))   # Expected output: "I Love Programming"
