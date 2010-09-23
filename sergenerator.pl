use Modern::Perl;

say '<table border=1>
    <tr> 
        <th>Module</th> 
        <th>Test results</th> 
    </tr>';

while (<>) {
    chomp;
    my ($mod, $res) = split ' - ';
    my $color;
    given ($res) {
        when ('ok') {
            $color = 'green';
        }
        when ('tests failed') {
            $color = 'red';
        }
        when ('building failed') {
            $color = 'red';
        }
        default {
            $color = 'yellow';
        }
    }
    say "<tr><td>$mod</td><td bgcolor='$color'>$res</td></tr>";
}

say '</table>';
