#!/usr/bin/perl

use strict;
use warnings;

use utf8;

use Shlomif::Screenplays::EPUB;

my $gfx = 'Buffy-A-Few-Good-Slayers-Logo--take1.svg.png';
my $obj = Shlomif::Screenplays::EPUB->new(
    {
        images =>
        {
            $gfx => "images/$gfx",
        },
    }
);

$obj->run;

{
    my $epub_basename = 'Buffy--A-Few-Good-Slayers';
    $obj->epub_basename($epub_basename);

    $obj->output_json(
        {
            data =>
            {
                filename => $epub_basename,
                title => q/Buffy: a Few Good Slayers/,
                authors =>
                [
                    {
                        name => "Shlomi Fish",
                        sort => "Fish, Shlomi",
                    },
                ],
                contributors =>
                [
                    {
                        name => "Shlomi Fish",
                        role => "oth",
                    },
                ],
                cover => "images/$gfx",
                rights => "Creative Commons Attribution Noncommercial ShareAlike Unported (CC-by-nc-sa-3.0)",
                publisher => 'http://www.shlomifish.org/',
                language => 'en-GB',
                subjects => [ 'FICTION/Humorous', 'FICTION/Mashups', 'Buffy', 'xkcd', ],
                identifier =>
                {
                    scheme => 'URL',
                    value => 'http://www.shlomifish.org/humour/Buffy/A-Few-Good-Slayers/',
                },
            },
        },
    );
}
