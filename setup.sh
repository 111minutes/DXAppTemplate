bundle install
rake setup

cp support/pre-commit .git/hooks/pre-commit
cp support/post-merge-hook	 .git/hooks/post-merge-hook	
