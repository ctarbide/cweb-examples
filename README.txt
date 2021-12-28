
About

    Basic usage of CWEB using TeX Live and some examples (wc.w and
    treeprint.w) from cweb CTAN package.

Require

    - TeX Live installation

Build

    ./build.sh

    # or

    run-texlive2021.sh ./build.sh

    # run-texlive2021.sh can be found in [1], along with TeX Live installation
    # tips and directions

    - [1]: https://github.com/ctarbide/coolscripts/blob/master/bin/run-texlive2021.sh

Test

    find . -type d | ./treeprint

    ./wc wc.w treeprint.w
    ./wc wc.c treeprint.c
    ./wc wc.tex treeprint.tex

References:

    - https://www-cs-faculty.stanford.edu/~knuth/cweb.html

        The CWEB System of Structured Documentation

        by Donald E. Knuth and Silvio Levy (Reading, Massachusetts:
	Addison-Wesley, 1993), iv+227pp.  ISBN 0-201-57569-8

    - https://ctan.org/pkg/cweb

    - https://ctan.org/tex-archive/web/c_cpp/cweb/examples

    - http://mirrors.ctan.org/web/c_cpp/cweb/examples/wc.w

    - http://mirrors.ctan.org/web/c_cpp/cweb/examples/treeprint.w

License

    All but the web files (treeprint.w and wc.w) are dedicated to the
    public domain.
