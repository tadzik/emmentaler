package emmentaler;
use Dancer ':syntax';
use POSIX 'strftime';

our $VERSION = '0.1';

get '/' => sub {
    my $date = strftime "%d-%m-%y", localtime;
    template "$date.tt"
};

get '/:date' => sub {
    if (-e 'views/' . params->{date} . '.tt') {
        return template params->{date} . '.tt'
    } else {
        return "No test results for " . params->{date}
    }
};

true;
