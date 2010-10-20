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

sub primes() is export(:DEFAULT) {
    2, 3, &next-prime ... *;
}