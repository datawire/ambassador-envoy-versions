all: all.csv

%.csv: %.org
	emacs --batch --find-file=$< --eval='(org-table-export "$@" "orgtbl-to-csv")' --kill
all.csv: ambassador-2-envoy-image.csv envoy-image-2-envoy-commit.csv ambassador-envoy-commit-2-upstream-envoy-base-commit.csv
	printf '%s\n' \
		'.mode csv' \
		$(foreach csv,$^,'.import "$(csv)" $(patsubst %.csv,%,$(subst -,_,$(csv)))') \
		'.headers on' \
		'SELECT * FROM (ambassador_2_envoy_image NATURAL JOIN envoy_image_2_envoy_commit) NATURAL JOIN ambassador_envoy_commit_2_upstream_envoy_base_commit;' \
		| sqlite3 > $@

.DELETE_ON_ERROR:
