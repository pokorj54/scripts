def is_prime(p):
    if p <= 1:
        return False
    i =2
    while i * i <= p:
        if p % i == 0:
            return False
        i += 1
    return True


def is_palindrome(p):
    n = len(p)
    for i in range(n // 2):
        if p[i] != p[n-1-i]:
            return False
    return True


def gcd(a, b):
    if b == 0:
        return a
    return gcd(b, a % b)

def lcm(a, b):
    return a//gcd(a, b)*b
