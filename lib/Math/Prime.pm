module Math::Prime;

my sub next-prime(*@primes) {
    my $i = @primes[*-1];
    return 3 if $i == 2;
    loop {
        $i += 2;
        my $prime = True;
        my $sqrt = $i.sqrt;
        for @primes {
            last if $_ > $sqrt;
            if $i %% $_ {
                $prime = False;
                last;
            }
        }
        return $i if $prime;    
    }
}

my @primes := (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61,
               67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139,
               149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227,
               229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311,
               313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401,
               409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491,
               499, 503, 509, 521, 523, 541, &next-prime ... *);

sub primes() is export {
    @primes.iterator.list;
}

sub is-prime(Int $x) is export {
    return False if $x == 1;
    my $limit = $x.sqrt.Int;
    for primes() -> $p {
        return True if $p > $limit;
        return False if $x %% $p;
    }
}
