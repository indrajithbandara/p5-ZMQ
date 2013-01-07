use strict;
use Test::More;

use_ok "ZMQ::LibCZMQ1";

subtest 'basic' => sub {
    my $ctx = zctx_new();
    ok $ctx, "new context";
    isa_ok $ctx, "ZMQ::LibCZMQ1::zctx";
    zctx_destroy( $ctx );
};

done_testing;