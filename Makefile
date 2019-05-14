all: all.org
.PHONY: all

clean:
	rm -f -- *.csv all.org
.PHONY: all

%.csv: %.org
	emacs --batch --find-file=$< --eval='(org-table-export "$@" "orgtbl-to-csv")' --kill
all.csv: ambassador-2-envoy-image.csv envoy-image-2-envoy-commit.csv ambassador-envoy-commit-2-upstream-envoy-base-commit.csv Makefile
	printf '%s\n' \
		'.mode csv' \
		$(foreach csv,$(filter %.csv,$^),'.import "$(csv)" $(patsubst %.csv,%,$(subst -,_,$(csv)))') \
		'.headers on' \
		'SELECT * FROM (ambassador_2_envoy_image LEFT NATURAL JOIN envoy_image_2_envoy_commit) LEFT NATURAL JOIN ambassador_envoy_commit_2_upstream_envoy_base_commit;' \
		| sqlite3 > $@
all.org: %.org: %.csv
	emacs --batch --find-file=$@ --eval='(org-table-import "$<" nil)' --eval='(save-buffer)' --kill
	sed -i '1p' $@
	sed -i -E -e '1s/[^|]+/<l>/g' -e '3i|-' $@
	emacs --batch --find-file=$@ --eval='(org-fill-paragraph)' --eval='(save-buffer)' --kill

envoy.git: FORCE
	git init --bare $@
	cd $@ && git remote add datawire https://github.com/datawire/envoy.git || true
	cd $@ && git remote add upstream https://github.com/envoyproxy/envoy.git || true
	cd $@ && git fetch --all --tags
ambassador-envoy-commit-2-upstream-envoy-base-commit.csv: envoy-image-2-envoy-commit.csv envoy.git Makefile
	set -e; { echo 'Envoy commit,Envoy commit date,Upstream Envoy base commit,Upstream Envoy base commit date'; < $< cut -d',' -f2 | sed -e 1d -e '/^???$$/d' | { cd envoy.git; while read -r hash; do base=$$(git merge-base "$$hash" "upstream/master"); echo "$$hash,$$(git log -n1 --date=short --format='%cd' "$$hash"),$$base,$$(git log -n1 --date=short --format='%cd' "$$base")"; done; }; } > $@

.DELETE_ON_ERROR:
.PHONY: FORCE
