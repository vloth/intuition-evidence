all: clojure-git

clojure-git:
	npm --prefix intuition run cli -- --db-path=../sources/intuition/db.duckdb \
	--task-type=git --task-source=clojure --git-pull=true \
	--git-repository=${HOME}/.repos/clojure --git-branch=master \
	--git-remote=https://github.com/clojure/clojure.git
