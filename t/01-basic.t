use Test;
use Math::Prime;

plan *;

is primes.munch(10), [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], "First ten primes are correct";
is primes[60..69], [283, 293, 307, 311, 313, 317, 331, 337, 347, 349], "Primes 60 through 69";
is primes[999], 7919, "1000th prime is 7919";

done_testing;
