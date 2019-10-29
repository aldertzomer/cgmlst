[![License: GPL v2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html) ![](https://img.shields.io/badge/Language-Perl_5-steelblue.svg)

# cgmlst

Fork of Torsten Seemanns excellent [mlst](https://github.com/tseemann/mlst) tool modified for cgMLST. Schemes supported are campylobacter, ecoli and Lmono. Others may work as well. 
Text below was crudely adapted from the readme of mlst

## Quick Start

    % cgmlst --scheme=ecoli contigs.fa > output.tsv

## Installation

### Source

    % cd $HOME
    % git clone https://github.com/aldertzomer/cgmlst.git
    % cd cgmlst
    % bash getdb.sh #needs wget

    
### Dependencies

* [NCBI BLAST+ blastn](https://www.ncbi.nlm.nih.gov/books/NBK279671/) 
  * You probably have `blastn` already installed already.
* Perl modules *Moo* and *List::MoreUtils*
  * Debian: `sudo apt-get install libmoo-perl liblist-moreutils-perl`
  * Redhat: `sudo apt-get install perl-Moo perl-List-MoreUtils`
  * Most Unix: `sudo cpan Moo List::MoreUtils`
* Wget
  * Debian: `sudo apt-get install wget`

## Usage

Simply just give it a genome file in FASTA or GenBank file!

    % cgmlst --scheme=ecoli contigs.fa

It returns a tab-separated line containing
* the filename
* the closest PubMLST scheme name
* the ST (sequence type)
* the allele IDs

## Available schemes

To see which PubMLST schemes are supported:

    % cgmlst --list
    
    campylobacter ecoli

## Missing data

cgmlst does not just look for exact matches to full length alleles. 
It attempts to tell you as much as possible about what it found using the
notation below:

Symbol | Meaning
--- | ---
`n` | exact intact allele
`~n` | novel allele similar to n
`n?` | partial match to known allele
`n,m` | multiple alleles
`-` | allele missing

## Bugs

Please submit via the Github Issues page: https://github.com/aldertzomer/cgmlst/issues

## License

GPLv2: https://raw.githubusercontent.com/aldertzomer/cgmlst/master/LICENSE

