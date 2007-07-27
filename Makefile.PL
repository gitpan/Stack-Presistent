use 5.008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Stack::Presistent',
    VERSION_FROM      => 'lib/Stack/Presistent.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Stack/Presistent.pm', # retrieve abstract from module
       AUTHOR         => 'Kevin L. Esteb <kevin (at) kesteb.us>') : ()),
);
