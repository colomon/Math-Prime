use Test;
use Math::Prime;

is primes[^10], [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], "First ten primes are correct";
is primes[60..69], [283, 293, 307, 311, 313, 317, 331, 337, 347, 349], "Primes 60 through 69 are correct";
is primes[60..69], [283, 293, 307, 311, 313, 317, 331, 337, 347, 349], "Primes 60 through 69 are still correct";
is primes[98..105], [523, 541, 547, 557, 563, 569, 571, 577], "Primes 98 through 105 are correct";

is (1..20).grep(&is-prime).join(', '), '2, 3, 5, 7, 11, 13, 17, 19', 'is-prime 1..20';

# save the slow one for last
is primes[999], 7919, "1000th prime is 7919";

done;
