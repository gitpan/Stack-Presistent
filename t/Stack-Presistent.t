# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Stack-Presistent.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 12;
BEGIN { use_ok('Stack::Presistent') };

#########################

ok( $stack = Stack::Presistent->new(-filename => 't/test.cache',
                                    -pages => '1',
                                    -size => '256k') );
ok( $stack->push('default', 'test1') );
ok( $stack->push('default', 'test2') );
ok( $stack->push('default', 'test3') );
ok( $stack->push('default', 'test4') );
ok( printf("items = %s\n", $stack->items('default')) );
ok( $stack->dump('default') );
ok( printf("item = %s\n", $stack->pop('default')) );
ok( printf("items = %s\n", $stack->items('default')) );
ok( $stack->clear('default') );
ok( printf("items = %s\n", $stack->items('default')) );

