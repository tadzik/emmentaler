use 5.014;
use Mojo::JSON;
use Mojo::Template;
use File::Slurp 'slurp';

my $mt = Mojo::Template->new;

my $results = Mojo::JSON->new->decode(slurp 'results.json');
print $mt->render_file('template.tt', $results);
