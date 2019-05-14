The `graph.txt` and `*.org` files were made kinda-by-hand:

 - `graph.txt`: I first used
 
   ```
   gitk -- Makefile Dockerfile ambassador/Dockerfile
   ```

   to identify which commits changed the Envoy image in use.  I
   manually tagged each of those with a `tmp-HASH` tag.  I then used

   ```
   gitk --simplify-by-decoration $(git tag)
   ```

   to build a reasonable-ish graph, then I converted that to
   `graph.txt` by hand.

 - `ambassador-2-envoy-image.org`: I created this by hand (and heavy
   use of Emacs' macros) from `graph.txt`.

 - `envoy-image-2-envoy-commit.org`: This was mostly from a Bash
   one-liner, but I can't seem to find it in my `~/.bash_history`.

Running `make` will aggregate these in to `all.org`, as well as
generating a maybe-easier `*.csv` file for each `*.org` file.
