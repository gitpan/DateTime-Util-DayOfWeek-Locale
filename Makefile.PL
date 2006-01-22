use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'         => 'DateTime::Util::DayOfWeek::Locale',
    'VERSION_FROM' => 'lib/DateTime/Util/DayOfWeek/Locale.pm',  # finds $VERSION
    'PREREQ_PM'    => {
        Test::More         => 0.32,
        UNIVERSAL::require => 0.10,
        DateTime           => 0.2901,
    },
);
