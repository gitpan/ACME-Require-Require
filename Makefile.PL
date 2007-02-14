use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'ACME::Require::Require',
    AUTHOR              => 'Robert Boone <rlb@cpan.org>',
    VERSION_FROM        => 'lib/ACME/Require/Require.pm',
    ABSTRACT_FROM       => 'lib/ACME/Require/Require.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'ACME-Require-Require-*' },
);
