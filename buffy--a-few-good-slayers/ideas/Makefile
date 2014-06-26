all: ideas.html ideas.xhtml

ideas.xhtml: ideas.pod
	perl -C -E 'use Pod::PseudoPod::HTML; my $$p = Pod::PseudoPod::HTML->new; $$p->parse_file(q#$<#)' | perl -lane 'print if /\S/' > $@

ideas.html: ideas.xhtml
	cp -f $< $@

clean:
	rm -f ideas.xhtml

view: ideas.html
	xdg-open $<
