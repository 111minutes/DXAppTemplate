cp support/pre-commit .git/hooks/pre-commit
cp support/post-merge-hook	 .git/hooks/post-merge-hook	

bundle install
rake setup
