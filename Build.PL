use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'ACME::Require::Require',
    license             => 'perl',
    dist_author         => 'Robert Boone <rlb@cpan.org>',
    dist_version_from   => 'lib/ACME/Require/Require.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'ACME-Require-Require-*' ],
);

$builder->create_build_script();
