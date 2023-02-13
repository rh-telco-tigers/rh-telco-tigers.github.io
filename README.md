# rh-telco-tigers.github.io source repository

This is the source repository for [rh-telco-tigers.github.io](https://rh-telco-tigers.github.io)

## Using this repo

1. Install Hugo: [Installing Hugo](https://gohugo.io/installation/)
2. Clone this repo `git clone git@github.com:rh-telco-tigers/rh-telco-tigers.github.io.git`
3. `cd rh-telco-tigers.github.io.git`
4. This project uses submodules so we need to init the sub module
    - `git submodule update --init --recursive`
4. `hugo new posts/<my new page title>.md`
5. edit file called `content/posts/<my new page title>.md`
6. run `hugo server` and open [http://localhost:1313](http://localhost:1313) in your browser
7. review your new content
8. Commit your new page
    - `git add content/posts/<my new page title>.md`
    - `git commit -m "adding new post"`
    - `git push`


## Page Theme

base on https://github.com/adityatelange/hugo-PaperMod

To update page theme:

```
cd themes/PaperMod
git pull
```

## Adding content

In order to add content you MUST create a branch, commit your changes to a branch and then create a pull request against "Main" to publish your changes.

```
git checkout -b <my branchname here>
<do stuff>
git commit -m <my awesome commit>"
git push <my branch name here> origin
```

## Testing Locally

You will need a copy of HUGO to check and ensure that your page renders correctly. See [Installing Hugo](https://gohugo.io/installation/). It can also be run from a docker image:

```
docker run --rm -it \
  -v $(pwd):/src \
  -p 1313:1313 \
  klakegg/hugo:0.101.0 \
  server
```

## Publishing page update

