use Test::More tests => 5;
BEGIN { use_ok('Tree::Builder::Data') }
my $data = new Tree::Builder::Data();
ok($data, 'new');
$data->add(new Tree::Builder::Class(class => 'Foo'));
my @classes = $data->classes;
is(scalar(@classes), 1, 'classes');
is($classes[0]->is_substantial, 0, 'finalize [1]');
$data->finalize;
is($classes[0]->is_substantial, 1, 'finalize [2]');
