# rh-telco-tigers.github.io source repository

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

