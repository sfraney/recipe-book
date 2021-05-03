# recipe-book
The source for the personal site (sfraney.github.io)

<p>This repo gets interacted with as normal, but when ready to deploy an update, only push the 'public' directory git subtree to sfraney.github.io repo (where 'generated' is the remote name for sfraney.github.io repo):</p>
<pre>git subtree push --prefix public generated gh-pages</pre>
