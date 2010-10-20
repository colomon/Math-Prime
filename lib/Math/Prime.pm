module Math::Prime;

my sub next-prime(*@primes) {
    my $i = @primes[*-1];
    return 3 if $i == 2;
    loop {
        $i += 2;
        my $prime = True;
        for @primes {
            if $i %% $_ {
                $prime = False;
                last;
            }
        }
        return $i if $prime;    
    }
}

my @primes := (2, 3, &next-prime ... *);

sub primes() is export(:DEFAULT) {
    @primes;
}

sub is-prime(Int $x) is export(:DEFAULT) {
    return False if $x == 1;
    my $limit = $x.sqrt.Int;
    for primes() -> $p {
        return True if $p > $limit;
        return False if $x %% $p;
    }
}
