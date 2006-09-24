package DateTime::Util::DayOfWeek::Locale;
use strict;
use warnings;
our $VERSION = '0.04';
use UNIVERSAL::require;
use Carp;

sub import {
    my $self   = shift;
    my $locale = shift;

    croak "Usage : use DateTime::Util::DayOfWeek::Locale 'fr';" unless $locale;

    "DateTime::Locale::$locale"->use or die $@;

    no strict 'refs';
    my $i = 1;
    for my $dow (@{"DateTime::Locale::$locale"->day_names}) {
        my $x = $i++;
        *{"DateTime::is_\L$dow"} = sub { shift->dow == $x };
    }
}

1;
__END__

=head1 NAME

DateTime::Util::DayOfWeek::Locale - DateTime Localized Day of Week Utilities

=head1 SYNOPSIS

    use DateTime;
    use DateTime::Util::DayOfWeek::Locale 'fr';

    my $dt = DateTime->today;
    print "Aujourd'hui est dimanche" if $dt->is_dimanche;

=head1 DESCRIPTION

DateTime::Util::DayOfWeek::Locale is localized day of week utilities for DateTime.

You can judgement the day of week in your native language ;-)

=head1 AUTHOR

MATSUNO Tokuhiro E<lt>tokuhiro at mobilefactory.jpE<gt>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 THANKS TO

Tatsuhiko Miyagawa, id:charsbar.

=head1 SEE ALSO

L<DateTime>, L<DateTime::Util::DayOfWeek>

=cut
