all: ideas.xhtml

ideas.xhtml: ideas.pod
	perl -E 'use Pod::Simple::XHTML; my $$p = Pod::Simple::XHTML->new; $$p->parse_file(q#$<#)' > $@
