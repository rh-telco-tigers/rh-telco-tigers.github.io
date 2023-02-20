# rh-telco-tigers.github.io source repository

This is the source repository for [rh-telco-tigers.github.io](https://rh-telco-tigers.github.io)

## Article Organization

When you create new content for this site, you will need to place it into one of the following Categories:

* automation
* application-onboarding
* hybrid-cloud
* incubation
* machine-learning
* middleware
* onboarding-workshops
* private-cloud
* public-cloud
* miscellaneous

If you are unsure what the proper category is please check with someone on the team.

## Using this repo

1. Install Hugo: [Installing Hugo](https://gohugo.io/installation/)
2. Make a fork of the [rh-telco-tigers.github.io](https://github.com/rh-telco-tigers/rh-telco-tigers.github.io) repo
3. Clone your fork `git clone git@github.com:<yournamehere>/rh-telco-tigers.github.io.git`
4. `cd rh-telco-tigers.github.io.git`
5. Create a new post in the proper category from [Article Organization](#article-organization) `hugo new <category>/<my new page title>.md`
  a. you can also just create a new markdown file in `content/<category>/mynewfile.md`
5. edit file called `<category>/<my new page title>.md`
6. run `hugo server` and open [http://localhost:1313](http://localhost:1313) in your browser to validate your changes
7. review your new content
8. Commit your new page
    - `git add content/posts/<my new page title>.md`
    - `git commit -m "adding new post"`
    - `git push`

Using GitHub create a pull request to merge your change into the main branch.

## Page Theme

This website is based on the theme [Ramium](https://github.com/rafed/ramium). It has been modified to meet our needs. Check the git history to see what has been changed in the `themes\ramium` directory for a list of changes.

You will need a copy of HUGO to check and ensure that your page renders correctly. See [Installing Hugo](https://gohugo.io/installation/). It can also be run from a docker image:

## Running Hugo from a Container

It is also possible to run hugo from a container using the following command:

```
podman run --rm -it \
  -v $(pwd):/src:z \
  -p 1313:1313 \
  klakegg/hugo:0.101.0 \
  server
```

Note if you are using a MAC you may have to modify the commands above to work with the volume management.