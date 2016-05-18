The Mode That Alternate Terminal
=========

I used to searching for a mode in Emacs to simulate the terminal and only find the shell mode which is
not good enough, so I stopped searching. Fortunately I occasionally find the term mode which is exactly
what I am looking for.

The term mode has two input modes: one is line mode which is exact the same as shell mode which I don't
like at all, and the other one is char mode which is default and can be trigger on by typing C-c C-k.
Since all characters typed by keyboard are sent to the shell directly without analyzed by Emacs, some
import key bindings fail, and the char mode designs the escape key C-c, which means key strokes after
C-c is received by Emacs first instead of Shell. As a result, the BREAK signal should by triggered on
by C-c C-c, and the global binding C-x o is invoked by C-c o. One important feature is page-at-a-time, 
which is enabled by C-c C-q, and it helps read output longer than one page.

That's it, enjoy it.
