module Math::Prime;

my sub next-prime(*@primes) {
    my $i = @primes[*-1];
    return 3 if $i == 2;
    loop {
        $i += 2;
        return $i unless [||] $i <<%%<< @primes;
    }
}

sub primes() is export(:DEFAULT) {
    2, 3, &next-prime ... *;
}