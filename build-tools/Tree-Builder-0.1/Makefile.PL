use 5.008008;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'Tree::Builder',
    VERSION_FROM => 'lib/Tree/Builder.pm',
    EXE_FILES    => [qw( bin/treebuild )],
    PREREQ_PM    => { Template => '2.20', },
    (
        $] >= 5.005
        ? (
            ABSTRACT_FROM => 'lib/Tree/Builder.pm',
            AUTHOR        => 'Bill Hails <me@billhails.net>'
          )
        : ()
    ),
);
