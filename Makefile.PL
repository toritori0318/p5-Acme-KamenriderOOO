use 5.010001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Acme::KamenriderOOO',
    VERSION_FROM      => 'lib/Acme/KamenriderOOO.pm', # finds $VERSION
    PREREQ_PM     => {
        'Class::Accessor' => 0,
        'Class::Load'     => 0,
        'Term::ANSIColor' => 0,
    },
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Acme/KamenriderOOO.pm', # retrieve abstract from module
       AUTHOR         => 'torii <torii@local>') : ()),
);
